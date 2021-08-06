
public class TLSKeySchedule { 
   
  // NOTATION is from https://eprint.iacr.org/2020/1044.pdf 
   
  // This class contains functions that derive the TLS 1.3 client's application key given the following inputs:
  // Input:  
  //   - handshake transcript 
  //   - client's secrets (PSK and/or DHE share) 
  //   - application data ciphertext 
  // Output: 
  //   - client's application traffic key 
  //   - decryption of the applicaton data 
  //  
  // This is done for the following 4 types of TLS 1.3 Key Schedule methods: 
  //   - 0RTT 
  //   - Baseline 1RTT 
  //   - Shortcut 1RTT 
  //   - Amortized Opening 
   
  // The notation for all variables in this class is from: 
  // https://eprint.iacr.org/2020/1044.pdf 
   
  // The key dervation process for the different methods is in Figure 2 
   
   
   
   
  // 0RTT method is a "session resumption" feature offered by TLS 
  // where the client and server share a PSK (established in a previous session) 
  // and the PSK can be used to send "early data" in the client's first message  
  // without a full handshake 
  // See Figure 2 from https://eprint.iacr.org/2020/1044.pdf 
   
  // The function broadly does the following steps: 
  // (1) Using the PSK and transcript hashes, compute the binder 
  // (2) Verify that it is equal to the REAL_BINDER from the transcript 
  // (3) Now, compute the traffic keys and decrypt the ciphertext 
   
  public static uint_8[] get0RTT(uint_8[] PSK, uint_8[] H_1, uint_8[] H_5, uint_8[] REAL_BINDER, uint_8[] dns_ciphertext) { 
     
    uint_8[] ES = HKDF.hkdf_extract(Util.new_zero_array(32), PSK); 
     
    uint_8[] dES = HKDF.hkdf_expand_derive_secret(ES, "derived", SHA2.hash_of_empty()); 
     
    uint_8[] BK = HKDF.hkdf_expand_derive_secret(ES, "res binder", SHA2.hash_of_empty()); 
     
    uint_8[] fk_B = HKDF.hkdf_expand_derive_secret(BK, "finished", new uint_8[0]); 
     
    // This is the binder derived by the purported PSK that was given as a witness to the circuit 
    uint_8[] derived_binder = HKDF.hmac(fk_B, H_5); 
     
    // Verify that the derived binder is the same as the one from the transcript 
    verifyEq ( Util.combine_8_into_256(REAL_BINDER) , Util.combine_8_into_256(derived_binder) ); 
     
    uint_8[] ETS = HKDF.hkdf_expand_derive_secret(ES, "c e traffic", H_1); 
     
    uint_8[] tk_early = HKDF.hkdf_expand_derive_tk(ETS, 16); 
    uint_8[] iv_early = HKDF.hkdf_expand_derive_iv(ETS, 12); 
     
    // decrypt the plaintext 
    uint_8[] dns_plaintext = AES_GCM.aes_gcm_decrypt(tk_early, iv_early, dns_ciphertext); 
    return dns_plaintext; 
  } 
   
  // This is the baseline 1RTT handshake key derivation 
  // Steps: 
  // (1) Verify and derive the EC DHE secret 
  // (2) Compute server handshake keys 
  // (3) Decrypt the encrypted parts of CT3 (CH || SH || ServExt) to get TR3 
  // (3) Hash TR3 
  // (5) Derive client traffic keys and decrypt ciphertext 
   
  // Inputs: DHE share and public points A and B 
  // transcript hash H2 = Hash(CH || SH) 
  // CH_SH - Transcript ClientHello || ServerHello and its length 
  // ServExt_ct - the encrypted Server Extensions and its length 
  // ServExt_tail_ct is the part of ServExt_ct that doesn't fit into a whole SHA block 
  // appl_ct - the application data ciphertext 
   
  public static uint_8[][] get1RTT(uint_256 DHE_share, F_p256 Ax, F_p256 Ay, F_p256 Bx, F_p256 By, uint_8[] H2, uint_8[] CH_SH, uint_16 CH_SH_len, uint_8[] ServExt_ct, uint_16 ServExt_len, uint_8[] ServExt_tail_ct, uint_8[] appl_ct) { 
     
    uint_8[] ES = HKDF.hkdf_extract(Util.new_zero_array(32), Util.new_zero_array(32)); 
    uint_8[] dES = HKDF.hkdf_expand_derive_secret(ES, "derived", SHA2.hash_of_empty()); 
     
    // This function's goals: 
    // (1) Verify that G^sk = A where G is the generator of secp256 
    // (2) Compute B^sk to obtain the DHE secret 
    uint_8[] DHE = ECDHE.DHExchange(Ax, Ay, Bx, By, DHE_share); 
     
    uint_8[] HS = HKDF.hkdf_extract(dES, DHE); 
     
    uint_8[] SHTS = HKDF.hkdf_expand_derive_secret(HS, "s hs traffic", H2); 
     
    // traffic key and iv for "server handshake" messages 
    uint_8[] tk_shs = HKDF.hkdf_expand_derive_tk(SHTS, 16); 
    uint_8[] iv_shs = HKDF.hkdf_expand_derive_iv(SHTS, 12); 
     
    uint_8[] dHS = HKDF.hkdf_expand_derive_secret(HS, "derived", SHA2.hash_of_empty()); 
     
    uint_8[] MS = HKDF.hkdf_extract(dHS, Util.new_zero_array(32)); 
     
    // Decrypt the server extensions with the server's handshake traffic keys 
    uint_8[] ServExt = AES_GCM.aes_gcm_decrypt(tk_shs, iv_shs, ServExt_ct); 
     
    // Now, we need to decrypt the ServExt_tail. 
    // As we are using AES GCM, we need to find the exact block number that the tail starts at. 
    // One AES block = 16 bytes 
    uint_8 gcm_block_number = uint_8(ServExt_len / uint_8(64)) * uint_8(4); 
     
    // Returns the decryption starting at the GCM counter  
    uint_8[] Serv_Ext_tail = AES_GCM.aes_gcm_decrypt(tk_shs, iv_shs, ServExt_tail_ct, gcm_block_number); 
     
    // This transcript is CH || SH || ServExt 
    uint_8[] TR3 = Util.concat(CH_SH, ServExt); 
     
    // As we don't know the true length of ServExt, the variable's size is a fixed upper bound 
    // However, we only require a hash of the true transcript, which is a prefix of the variable 
    // of length CH_SH_len + ServExt_len 
    uint_8[] H3 = SHA2.sha2_of_prefix(TR3, CH_SH_len + ServExt_len, Serv_Ext_tail); 
     
    uint_8[] CATS = HKDF.hkdf_expand_derive_secret(MS, "c ap traffic", H3); 
     
    uint_8[] tk_capp = HKDF.hkdf_expand_derive_tk(CATS, 16); 
    uint_8[] iv_capp = HKDF.hkdf_expand_derive_iv(CATS, 12); 
     
    uint_8[] dns_plaintext = AES_GCM.aes_gcm_decrypt(tk_capp, iv_capp, appl_ct); 
     
    return new uint_8[][]{dns_plaintext, tk_capp, iv_capp}; 
  } 

  // Implements the HS shortcut, where the client's witness is the HS secret  
  // Steps: 
  // (1) Derive the server handshake key using the HS 
  // (2) Use it to decrypt the ServerFinished value from the transcript - real_SF 
  // (3) Derive the ServerFinished value using the purported HS - calculated_SF 
  // (4) Verify that the two SF values are the same 
  // (5) Using the HS, compute the client traffic keys and decrypt the ciphertext 
   
  // HS - handshake secret 
  // H2 - Hash(CH || SH) 
  // ServExt - server extensions (the last 36 bytes of which are the ServerFinished ext) 
  // ServExt_tail - the suffix of ServExt that does not fit in a whole SHA block 
   
  // Transcript TR3 = ClientHello || ServerHello || ServExt 
  // note that the final 36 bytes of TR3 contain the ServerFinished extension 
  // TR7 is TR3 without the SF extension; that is, TR7 is TR3 without the last 36 bytes 
   
  // SHA_H_Checkpoint - the H-state of SHA up to the last whole block of TR7 
   
  public static uint_8[][] get1RTT_HS(uint_8[] HS, uint_8[] H2, uint_16 CH_SH_len, uint_16 ServExt_len, uint_8[] ServExt_ct_tail, uint_8 ServExt_tail_len, uint_32[] SHA_H_Checkpoint, uint_8[] appl_ct) { 
     
    uint_8[] SHTS = HKDF.hkdf_expand_derive_secret(HS, "s hs traffic", H2); 
     
    // traffic key and iv for "server handshake" messages 
    uint_8[] tk_shs = HKDF.hkdf_expand_derive_tk(SHTS, 16); 
    uint_8[] iv_shs = HKDF.hkdf_expand_derive_iv(SHTS, 12); 
     
    uint_16 TR3_len = CH_SH_len + ServExt_len; 
    uint_16 TR7_len = TR3_len - uint_8(36); 
     
    // ServExt = ServExt_head || ServExt_tail 
    uint_16 ServExt_head_length = uint_16(ServExt_len - ServExt_tail_len); 
     
    // To decrypt the ServExt_tail, we need to calculate the GCM counter block number 
    uint_8 gcm_block_number = uint_8(ServExt_head_length / uint_16(16)); 
     
    // Additionally, the ServExt_tail might not start perfectly at the start of a block 
    // That is, the length of ServExt_head may not be a multiple of 16 
    uint_8 offset = uint_8(ServExt_head_length % uint_8(16)); 
     
    // This function decrypts the tail with the specific GCM block number and offset within the block 
    uint_8[] ServExt_tail = AES_GCM.aes_gcm_decrypt_128bytes_middle(tk_shs, iv_shs, ServExt_ct_tail, gcm_block_number, offset); 
     
    // This function calculates the hash of TR3 and TR7 where TR7 is TR3 without the last 36 characters 
    // starting with the SHA_H_Checkpoint provided as a checkpoint state of SHA that is common to both transcripts. 
    // The inputs are: 
    // - the checkpoint state 
    // - the length of TR3 and TR7 (the latter must be a prefix of the former) 
    // - the tail of TR3 (the suffix after the checkpoint) 
    // - the length of the tail of TR3 
    // - the length of the tail of TR7 
    uint_8[][] H7_H3 = SHA2.double_sha_from_checkpoint(SHA_H_Checkpoint, TR3_len, TR7_len, ServExt_tail, ServExt_tail_len, ServExt_tail_len - uint_8(36)); 
     
    uint_8[] H_7 = H7_H3[0]; 
    uint_8[] H_3 = H7_H3[1]; 
     
    // Derive the SF value  
    uint_8[] fk_S = HKDF.hkdf_expand_derive_secret(SHTS, "finished", new uint_8[0]); 
    uint_8[] SF_calculated = HKDF.hmac(fk_S, H_7); 
     
    // Now, we need to calculate the actual SF value present in the transcript 
    // We know that SF is in the tr3_tail  
    // And that it is the last 32 bytes of tr3_tail... so there are ct3_tail_length - 32 characters before it 
    uint_8[] SF_transcript = new uint_8[32]; 
    RAM <uint_8> ServExt_tail_RAM = INIT_RAM <uint_8>(ServExt_tail); 
     
    for (int i = 0; i < 32; i++) { 
      SF_transcript[i] = ServExt_tail_RAM[uint_8(i) + ServExt_tail_len - uint_8(32)]; 
    } 
     
    // Verify that the two SF values are identical 
    verifyEq ( Util.combine_8_into_256(SF_calculated) , Util.combine_8_into_256(SF_transcript) ); 
     
    uint_8[] dHS = HKDF.hkdf_expand_derive_secret(HS, "derived", SHA2.hash_of_empty()); 
     
    uint_8[] MS = HKDF.hkdf_extract(dHS, Util.new_zero_array(32)); 
     
    uint_8[] CATS = HKDF.hkdf_expand_derive_secret(MS, "c ap traffic", H_3); 
     
    // client application traffic key, iv 
    uint_8[] tk_capp = HKDF.hkdf_expand_derive_tk(CATS, 16); 
    uint_8[] iv_capp = HKDF.hkdf_expand_derive_iv(CATS, 12); 
     
    uint_8[] dns_plaintext = AES_GCM.aes_gcm_decrypt(tk_capp, iv_capp, appl_ct); 
     
    return new uint_8[][]{dns_plaintext, tk_shs, iv_shs, tk_capp, iv_capp, H_3, SF_calculated}; 
  } 
   
   
   
   
   
   
   
}
