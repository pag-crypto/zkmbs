import sys
sys.path.insert(0, "./tlslite-ng-0.8.0-alpha40")
import os
from socket import *
import binascii
from dnslib import DNSRecord,DNSQuestion
from tlslite import TLSConnection, HandshakeSettings
from tlslite.constants import *
import make_doh_request
import time
import sha2_compressions
from cryptography.hazmat.primitives.ciphers import (Cipher, algorithms, modes) 


# URLs of DNS servers to query 
CLOUDFLARE = "1.1.1.1"
GOOGLE = "8.8.8.8"
DOT_SERVER_IP = CLOUDFLARE  # variable for selected server

# default method is DNS over TLS
method = "dot"
# default DoH method is GET
http_method = "GET"

# takes bytearray key, iv as input; string plaintext
def encrypt_aes_gcm(key, iv, plaintext):
    encryptor = Cipher(
        algorithms.AES(key),
        modes.GCM(iv),
    ).encryptor()

    ciphertext = encryptor.update(bytes.fromhex(plaintext)) + encryptor.finalize()

    return ciphertext


# Given a TLS connection established using tlslite-ng,
# this function extracts the required test values
def get_test_values(tlsconn):
    # We have configured tlsconn to store the following values
    psk             = tlsconn.psk
    ec_sk           = tlsconn.clientPrivate
    ec_pk_client    = tlsconn.clientPublic
    ec_pk_server    = tlsconn.serverPublic
    hs              = tlsconn.handshakeSecret
    ch_sh           = tlsconn.serverHelloTranscript
    H_2             = tlsconn.serverHelloTranscriptHash
    H_7             = tlsconn.serverExtensionsTranscriptHash
    SF              = tlsconn.serverFinishedValue
    H_3             = tlsconn.serverFinishedTranscriptHash

    len_sh = len(tlsconn.serverHelloTranscript)

    # server's handshake key
    tk_shs = tlsconn.serverHSKey
    iv_shs = tlsconn.serverHSIV

    # client application key
    # used for verification
    c_ap_key = tlsconn._recordLayer._writeState.encContext.key
    c_ap_iv = tlsconn._recordLayer._writeState.fixedNonce

    # tlsconn stores the plaintext of the transcripts sent
    # A bit of a hack, but  we just encrypt them to get the ciphertexts that are input to the circuit
    tr_7 = tlsconn.serverExtensionsTranscript # CH || SH || Extensions_without_SF_value
    ct_7 = encrypt_aes_gcm(tk_shs, iv_shs, tr_7[len_sh:]).hex()

    # obtain ct_3, the encrypted part of tr3
    tr3 = tlsconn.serverFinishedTranscript # CH || SH || Extensions_with_SF_value
    ct_3 = encrypt_aes_gcm(tlsconn.serverHSKey, tlsconn.serverHSIV, tr3[len_sh:]).hex()

    # This function returns the checkpoint SHA256 state (H values) for tr7 
    # By checkpoint, this means this is the H-value at the last whole SHA block of tr7 (without padding)
    H_state_tr7 = sha2_compressions.get_H_state(tlsconn.serverExtensionsTranscript)

    # the rest of this recovers the DNS application ciphertext
    # (and the plaintext for testing)
    ciphertexts = tlsconn._recordLayer.ciphertextMessage
    plaintexts = tlsconn._recordLayer.plaintextMessage

    assert len(ciphertexts) > 0
    #TODO: this is a hack to decide which method was used
    if len(ciphertexts) == 4:
        #four entries means dot or doh get.
        dns_ct = ciphertexts[3].write().hex()
        # 16 bytes for tag + 1 byte for message type
        dns_ciphertext = dns_ct[0:-17]
        dns_plaintext = plaintexts[3].hex()
    elif len(ciphertexts) == 5:
        #five entries means doh post.
        dns_cts = ciphertexts[3:]
        dns_ciphertext = list(map(lambda x : x.write().hex()[0:-17], dns_cts))
        dns_pt1 = plaintexts[3].hex()
        c_ap_iv1 = bytearray(c_ap_iv)
        c_ap_iv1[-1] ^= 1
        dns_pt2 = plaintexts[4].hex()
        dns_plaintext = dns_pt1 + dns_pt2
    else:
        raise Exception("We only support cases where four or five messages are sent, " +\
                        " and there are either < 4 or >5 messages.")

    test_dict = {
        "psk": psk,
        "ec_sk": ec_sk[2:],
        "ec_pk_client_x": ec_pk_client[2:66],
        "ec_pk_client_y": ec_pk_client[66:],
        "ec_pk_server_x": ec_pk_server[2:66],
        "ec_pk_server_y": ec_pk_server[66:],
        "HS": hs,
        "H_2": H_2,
        "ct_7": ct_7,
        "H_7": H_7,
        "SF": SF,
        "ch_sh": ch_sh,
        "ct_3": ct_3,
        "H_3": H_3, 
        "dns_ciphertext": dns_ciphertext,
        "s_hs_key": tlsconn.serverHSKey.hex(),
        "s_hs_iv": tlsconn.serverHSIV.hex(),
        "c_ap_key": c_ap_key.hex(),
        "c_ap_iv": c_ap_iv.hex(),
        "dns_plaintext": dns_plaintext,
        "H_state_tr7": H_state_tr7
    }

    return test_dict

def open_tls13_connection_to_cloudflare(printhandshake=False):
    sock = socket(AF_INET, SOCK_STREAM)
    sock.connect((DOT_SERVER_IP, 853))

    oursettings = HandshakeSettings()
    oursettings.versions = [(3,4)]
    oursettings.cipherNames = ["aes128gcm"]
    oursettings.eccCurves = ["secp256r1"]
    oursettings.keyShares = ["secp256r1"]
    oursettings.usePaddingExtension = False
    # oursettings.eccCurves = ["x25519"]
    # oursettings.keyShares = ["x25519"]
    tlsconn = TLSConnection(sock)
    tlsconn.method_flag_for_padding = "dot"
    tlsconn.handshakeClientCert(settings=oursettings,print_handshake=printhandshake)
    return tlsconn,oursettings

def make_dot_query(querybytes):
    real_lenbytes = len(querybytes).to_bytes(2, "big")
    network_bytes =  real_lenbytes + querybytes
    tlsconn,oursettings = open_tls13_connection_to_cloudflare()
    tlsconn.send(network_bytes)
    response = tlsconn.recv(4096)
    # print_response_hex(response)
    dnsresponse_len = int.from_bytes(response[:2], "big")
    dnsresponse_bytes = response[2:]
    dnsresponse = DNSRecord.parse(dnsresponse_bytes)
    # print_response_header(dnsresponse_bytes[:12])
    # print(dnsresponse)

    # Create a resumption query
    sock2 = socket(AF_INET, SOCK_STREAM)
    sock2.connect((DOT_SERVER_IP, 853))
    tlsconn2 = TLSConnection(sock2)
    tlsconn2.method_flag_for_padding = "dot"
    tlsconn2.is_resumption_for_padding = True
    tlsconn2.handshakeClientCert(settings=oursettings,session=tlsconn.session)
    tlsconn2.send(network_bytes)
    response2 = tlsconn2.recv(4096)
    dnsresponse_len2 = int.from_bytes(response[:2], "big")
    dnsresponse_bytes2 = response[2:]
    dnsresponse2 = DNSRecord.parse(dnsresponse_bytes2)
    return tlsconn, dnsresponse, tlsconn2, dnsresponse2

DEFAULT_HTTP_METHOD = 'POST'

def make_doh_query(querybytes,http_method='GET'):
    printhandshake = False
    doh_conn = make_doh_request.open_doh_connection(printhandshake)
    tlsconn = None
    response = None
    tlsconn2 = None
    response2 = None
    if http_method == 'GET':
        print("Making DoH GET query.")
        response = make_doh_request.make_doh_get_query_with_qbytes(doh_conn, querybytes)
        tlsconn = doh_conn.sock
        doh_conn2 = make_doh_request.open_doh_connection(printhandshake,tlsconn.session)
        response2 = make_doh_request.make_doh_get_query_with_qbytes(doh_conn2, querybytes)
        tlsconn2 = doh_conn2.sock
    elif http_method == 'POST':
        print("Making DoH POST query.")
        response = make_doh_request.make_doh_post_query_with_qbytes(doh_conn, querybytes)
        print(response)
        tlsconn = doh_conn.sock
        doh_conn2 = make_doh_request.open_doh_connection(printhandshake,tlsconn.session)
        response2 = make_doh_request.make_doh_post_query_with_qbytes(doh_conn2, querybytes)
        print(response2)
        tlsconn2 = doh_conn2.sock
    else:
        raise Exception("http method must be either GET or POST.")
    return tlsconn, response, tlsconn2, response2

def make_resumption_query(querybytes):
    real_lenbytes = len(querybytes).to_bytes(2, "big")
    network_bytes =  real_lenbytes + querybytes
    tlsconn,oursettings = open_tls13_connection_to_cloudflare()
    tlsconn.send(network_bytes)
    response = tlsconn.recv(4096)
    # print_response_hex(response)
    dnsresponse_len = int.from_bytes(response[:2], "big")
    dnsresponse_bytes = response[2:]
    dnsresponse = DNSRecord.parse(dnsresponse_bytes)
    sock2 = socket(AF_INET, SOCK_STREAM)
    sock2.connect((DOT_SERVER_IP, 853))
    tlsconn2 = TLSConnection(sock2)
    tlsconn2.handshakeClientCert(settings=oursettings,session=tlsconn.session)
    tlsconn2.send(network_bytes)
    response = tlsconn2.recv(4096)
    dnsresponse_len = int.from_bytes(response[:2], "big")
    dnsresponse_bytes = response[2:]
    dnsresponse = DNSRecord.parse(dnsresponse_bytes)
    return tlsconn2, dnsresponse


def print_test(test_dict):
    print(test_dict['psk'])
    print(test_dict['ec_sk'])
    print(test_dict['ec_pk_client_x'])
    print(test_dict['ec_pk_client_y'])
    print(test_dict['ec_pk_server_x'])
    print(test_dict['ec_pk_server_y'])
    print(test_dict['HS'])
    print(test_dict['H_2'])
    print(test_dict['H_7'])
    print(test_dict['H_3'])
    print(test_dict['SF'])
    print(test_dict['ch_sh'])
    print(test_dict['ct_3'])
    print(test_dict['dns_ciphertext'])
    print(test_dict['H_state_tr7'])
    print("******** EXPECTED VALUES BELOW ********")
    print("plaintext: " + test_dict['dns_plaintext'])
    print("H3: " + test_dict['H_3'])
    print("s hs key: " + test_dict['s_hs_key'])
    print("s hs iv: " + test_dict['s_hs_iv'])
    print("c ap key: " + test_dict['c_ap_key'])
    print("c ap iv: " + test_dict['c_ap_iv'])


if __name__=='__main__':
    if (len(sys.argv)) <= 1:
        print("You must specify a domain name! Exiting.")
        exit(-1)
    domain = sys.argv[1]
    if domain == '-h' or domain == '-H':
        print("Specify a domain name as the first argument, (optionally) "+\
              "the string \'dot\' (the default) or \'doh\' as the second argument, "+\
              "and (optionally) the string \'GET\' (default) or \'POST\' as the third argument.")
        exit(0)
    method = "dot"
    http_method = DEFAULT_HTTP_METHOD
    if len(sys.argv) >= 3:
        method = sys.argv[2]
        if not (method == "dot" or method == "doh"):
            print("If you specify a method, it must be dot or doh! Exiting.")
            exit(-1)
        if len(sys.argv) == 4:
            http_method = sys.argv[3]
            if not (http_method == "GET" or http_method == "POST"):
                print("If you specify an http method, it must be GET or POST! Exiting.")
                exit(-1)
    dnsq = DNSRecord.question(domain)
    dnsq_bytes = dnsq.pack()
    if method == "dot":
        tlsconn, dnsresponse, tlsconn2, dnsresponse = make_dot_query(dnsq_bytes)
    else:
        tlsconn, dnsresponse, tlsconn2, dnsresponse = make_doh_query(dnsq_bytes,http_method)

    test_dict = get_test_values(tlsconn)
    test_dict2 = get_test_values(tlsconn2)
    # test_dict2 = get_test_values(tlsconn2)
    # print_test_httpfirewall_e2eexperiment(test_dict)
    print_test(test_dict)
    # print("****************************************************************")
    # print_test(test_dict2)










