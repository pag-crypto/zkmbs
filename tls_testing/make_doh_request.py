import sys
sys.path.insert(0, "./tlslite-ng-0.8.0-alpha40")
import os
import binascii
import base64
from socket import *
from dnslib import DNSRecord,DNSQuestion
from tlslite import TLSConnection, HandshakeSettings, HTTPTLSConnection
from tlslite.constants import *
import time

CLOUDFLARE_IP = "1.1.1.1"
GOOGLE_IP = "8.8.8.8"
CLOUDFLARE_DOMAIN = "cloudflare-dns.com"
DOH_SERVER_NAME = CLOUDFLARE_DOMAIN
HTTPS_PORT = 443
GET = "GET"
POST = "POST"
DOH_PATH = "/dns-query"
DOH_PATH_GET = DOH_PATH+"?dns="
DOH_GET_HEADER_DICT = {'accept':'application/dns-message'}
DOH_POST_HEADER_DICT = {'accept':'application/dns-message',\
                        'Content-Type':'application/dns-message'}

#The following function is taken from
#https://gist.github.com/cameronmaske/f520903ade824e4c30ab#file-encode-py-L16
def base64_encode(string):
    """
    Removes any `=` used as padding from the encoded string.
    """
    encoded = base64.urlsafe_b64encode(string).decode('utf-8')
    return encoded.rstrip("=")

def open_doh_connection(printhandshake=False,resumption_session=None):
    oursettings = HandshakeSettings()
    oursettings.usePaddingExtension = False
    oursettings.method_flag_for_padding = "doh"
    if resumption_session is not None:
        oursettings.is_resumption_for_padding = True
    oursettings.versions = [(3, 4)]
    oursettings.cipherNames = ["aes128gcm"]
    oursettings.eccCurves = ["secp256r1"]
    oursettings.keyShares = ["secp256r1"]
    doh_conn = HTTPTLSConnection(DOH_SERVER_NAME, HTTPS_PORT, settings = oursettings,\
                                 printhandshake=printhandshake,resumptionsession=resumption_session)
    return doh_conn


def open_doh_connection_nohttplib(printhandshake=False):
    sock = socket(AF_INET, SOCK_STREAM)
    sock.connect((CLOUDFLARE_DOMAIN, 443))
    oursettings = HandshakeSettings()
    oursettings.versions = [(3, 4)]
    oursettings.cipherNames = ["aes128gcm"]
    #oursettings.eccCurves = ["x25519"]
    #oursettings.keyShares = ["x25519"]
    oursettings.eccCurves = ["secp256r1"]
    oursettings.keyShares = ["secp256r1"]
    tlsconn = TLSConnection(sock)
    tlsconn.handshakeClientCert(settings=oursettings,printhandshake=printhandshake, serverName = CLOUDFLARE_DOMAIN)
    
#Does not close 'conn'.
def make_doh_get_query_with_qbytes(conn, dnsq_bytes):
    b64_dnsq = base64_encode(dnsq_bytes)
    pathstr = DOH_PATH_GET + b64_dnsq
    #print("URL string: " + pathstr)
    conn.request(GET, pathstr, headers=DOH_GET_HEADER_DICT)
    resp = conn.getresponse()
    #print("Status code: " + str(resp.status))
    #print("Headers:")
    #print(resp.headers.as_string())
    resp_dnsbytes = resp.read()
    resp_record = DNSRecord.parse(resp_dnsbytes)
    #print(resp_record)
    return resp_record
    

    
def make_doh_get_query_for_domain(domain, printhandshake = False):
    conn = open_doh_connection(printhandshake)
    dnsq = DNSRecord.question(domain)
    dnsq_bytes = dnsq.pack()
    make_doh_get_query_with_qbytes(conn,dnsq_bytes)
    conn.close()

#Does not close conn.
def make_doh_post_query_with_qbytes(conn, dnsq_bytes):
    conn.request(POST, DOH_PATH,body=dnsq_bytes, headers=DOH_POST_HEADER_DICT)
    resp = conn.getresponse()
    #print("Status code: " + str(resp.status))
    #print("Headers:")
    #print(resp.headers.as_string())
    resp_dnsbytes = resp.read()
    resp_record = DNSRecord.parse(resp_dnsbytes)
    #print(resp_record)
    return resp_record
    
    
def make_doh_post_query_for_domain(domain, printhandshake = False):
    conn = open_doh_connection(printhandshake)
    dnsq = DNSRecord.question(domain)
    dnsq_bytes = dnsq.pack()
    rr = make_doh_post_query_with_qbytes(conn, dnsq_bytes)
    print(rr)
    conn.close()


if __name__=='__main__':
    if (len(sys.argv)) <= 1:
        print("You must specify a domain name! Exiting.")
        exit(-1)
    _domain = sys.argv[1]
    _method = GET
    if len(sys.argv) >= 2:
        _method = sys.argv[2].upper()
        
    if _method == GET:
        make_doh_get_query_for_domain(_domain,printhandshake=True)
    elif _method == POST:
        make_doh_post_query_for_domain(_domain,printhandshake=True)
    else:
        print("If you specify a method, it must be either GET or POST! Exiting.")
        exit(-1)


    
