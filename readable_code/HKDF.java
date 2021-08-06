
public class HKDF { 
   
  // This file implements both HMAC and HKDF (RFC 5869) with SHA256 as the base hash function. 
  // The three main functions to implement are: 
  // (1) HMAC 
  // (2) HKDF Extract  
  // (3) HKDF Expand - this is a iterative function, but only one iteration is required in TLS 1.3 
  // The last two call HMAC after processing their inputs. 
  // Furthermore, TLS 1.3 uses Expand in particular ways depending on what the desired output is (a secret, key or iv) 
  // It also pre-processes the inputs in specific ways, such as prepending the string "tls13 " to the label 
   
  // Fixed bytes used in the HMAC function 
   
  public static final int IPAD = 0x36; 
   
  public static final int OPAD = 0x5c; 
   
   
  // HMAC function: 
  // HMAC(key, salt) = H((k \xor ipad) || H((k \xor opad)  ||  salt))  
  // where ipad and opad are fixed bytes (0x36 and 0x5c respective) 
   
  public static uint_8[] hmac(uint_8[] key, uint_8[] salt) { 
     
    // the key is padded to 512 bits when using SHA256 
    if (key.length < 64) { 
      uint_8[] key_pad = Util.new_zero_array(64 - key.length); 
      key = Util.concat(key, key_pad); 
    } 
     
    // We xor every byte of the key with ipad and opad to generate the following two strings 
    uint_8[] key_ipad = Util.xor_with_byte(key, uint_8(IPAD)); 
    uint_8[] key_opad = Util.xor_with_byte(key, uint_8(OPAD)); 
     
    // The inner of the two nested hashes 
    uint_8[] inner_hash = SHA2.sha2(Util.concat(key_ipad, salt)); 
     
    // The outer of the two nested hashes 
    return SHA2.sha2(Util.concat(key_opad, inner_hash)); 
  } 
   
   
  //  HKDF Extract 
   
  public static uint_8[] hkdf_extract(uint_8[] salt, uint_8[] key) { 
    return hmac(salt, key); 
  } 
   
  // One iteration of HKDF expand, the one_byte being appending to the 'info' input 
   
  public static uint_8[] hkdf_expand(uint_8[] key, uint_8[] info) { 
    uint_8[] the_one_byte = {uint_8(1)}; 
    uint_8[] label = Util.concat(info, the_one_byte); 
     
    return hmac(key, label); 
  } 
   
   
  // This function generates the label to be used by the TLS 1.3 algorithm when calling HKDF 
  // The description is in RFC 8446, Section 7.1 
   
  public static uint_8[] get_tls_hkdf_label(int output_len, string label_string, uint_8[] context_hash) { 
     
    // Get length of the desired output represented as 2 bytes 
    uint_16 output_len_in_bytes = uint_16(output_len); 
    uint_8[] output_len_bytes = {uint_8(output_len_in_bytes >> 8), uint_8(output_len_in_bytes)}; 
     
    // Append "tls13 " to the label string  
    uint_8[] label_bytes = Util.string_to_bytes("tls13 " + label_string); 
     
    // Prepend the length of the new label represented as 1 byte 
    uint_8[] label_len_byte = {uint_8(6 + label_string.length())}; 
     
    // Reprsent the length of the context hash as 1 byte 
    uint_8[] context_hash_len_byte = {uint_8(context_hash.length)}; 
     
    // The final label is the concatenation of the following: 
    // 1. length of the required output as 2 bytes 
    // 2. the label prepended by its length as one byte 
    // 3. the context hash prepended by its length as one byte 
    uint_8[][] arrays_to_concat = {output_len_bytes, label_len_byte, label_bytes, context_hash_len_byte, context_hash}; 
    uint_8[] hkdf_label = Util.concat(arrays_to_concat); 
     
    return hkdf_label; 
  } 
   
  // The three functions below call HKDF Expand 
  // when the output generated is a key and a iv and a TLS secret, respectively. 
  // Descriptions are in RFC 8446, Section 7.3 
   
   
  public static uint_8[] hkdf_expand_derive_tk(uint_8[] secret, int key_length) { 
    // For AES GCM 128, the key length is 16 
    uint_8[] hkdf_label = get_tls_hkdf_label(key_length, "key", new uint_8[0]); 
    return Util.get_prefix(hkdf_expand(secret, hkdf_label), key_length); 
  } 
   
   
  public static uint_8[] hkdf_expand_derive_iv(uint_8[] secret, int iv_length) { 
    // For AES GCM 128, the iv length is 12 
    uint_8[] hkdf_label = get_tls_hkdf_label(iv_length, "iv", new uint_8[0]); 
    return Util.get_prefix(hkdf_expand(secret, hkdf_label), iv_length); 
  } 
   
   
  public static uint_8[] hkdf_expand_derive_secret(uint_8[] secret, string label_string, uint_8[] context_hash) { 
    // The length of all TLS 1.3 secrets are 32 bytes 
     
    uint_8[] hkdf_label = get_tls_hkdf_label(32, label_string, context_hash); 
     
    return hkdf_expand(secret, hkdf_label); 
  } 
   
   
   
}
