Program ChannelAmortized { 
 
  // This class performs the Amortized Channel opening of !LS 1.3 
  // Inputs: 
  //   (1) A commitment to the traffic keys established from a previous Channel Opening proof 
  //   (2) The key and iv committed to (known only by the client) 
  //   (3) The TLS record sequence number SN  
  //   (4) Application data ciphertext 
   
  // Here, the commitment is just the poseidon hash the AES key || iv. 
  // As the same key may be used multiple times within one TLS session,  
  // the GCM mode block counter must be kept track of. 
   
  // Note that the middlebox keeps track of the traffic key commitments that are currently active. 
  // The middlebox also tracks the sequence number (SN) of each client's TLS session. 
   
  // The client's witness is the true key that is committed to. 
  // The circuit verifies that the commitment is correct and then decrypt the application data ciphertext. 
   
   
  // public inputs 
   
  // The commitment, known by both the middlebox and client 
  public F_p comm; 
   
  // TLS record Sequence Number used in the AES GCM decryption 
  public uint_64 SN; 
   
  // The application data ciphertext seen in the transcript 
  public uint_8[] appl_ct = new uint_8[255]; 
   
  // witnesses 
   
  // The key, iv known only by the client 
  public uint_8[] key = new uint_8[16]; 
  public uint_8[] iv = new uint_8[12]; 
   
  // variables for logging output 
  public uint_8[] output = new uint_8[32]; 
  public F_p output_Fp; 
   
   
  inputs { 
    comm, appl_ct, SN 
  } 
  outputs { 
    << ... >>  
  } 
  witnesses_AssertRange { 
    key, iv  
  } 
  witnesses { 
    << ... >>  
  } 
   
  public void outsource() { 
     
    // Compute the commitment, which is the Poseidon hash of key || iv 
    uint_8[] concat = Util.concat(key, iv); 
    uint_256 concat_256 = Util.convert_8_to_256_array(Util.concat(new uint_8[4], concat))[0]; 
    F_p comm_cal = PoseidonHash.poseidon_hash(new F_p[]{0, F_p(concat_256)}); 
     
    // Verify that the two commitments are equal 
    verifyEq ( comm , comm_cal ); 
     
    // Compute iv xor (0^32 || SN)  
    // this acts as the iv for this TLS record 
    uint_8[] iv_record = new uint_8[12]; 
     
    uint_96 SN_96 = uint_96(SN); 
     
    for (int i = 0; i < 12; i++) { 
      iv_record[i] = iv[i] ^ uint_8(SN_96 >> (8 * (11 - i))); 
    } 
     
    // Use the input keys to decrypt at the specified block 
    output = AES_GCM.aes_gcm_decrypt(key, iv_record, appl_ct); 
     
    // For logging output 
    output_Fp = comm_cal; 
     
  } 
   
   
   
  SampleRun("Sample_Run1", true){ 
    pre { 
        try { 
           
          // Example commitment string 
          string comm_str = "2db24a9a876fc5395a0a087137c4d73de25a4f2002f384513d8427959247c4cd"; 
           
          // Key, iv that were committed to 
          string key_str = "e1a1786a0c146f4b172192141df6ffd9"; 
          string iv_str = "cf73d63f3ac141740b84c7fd"; 
           
          // query is amazon.com 
          string dns_ct_str = "50e2daf49a12e78a4eed77fa7bb76e462287446b510f61f50c3f1c"; 
           
          // Convert the strings to circuit input types 
           
          comm.val = new BigInteger(comm_str, 16); 
           
          for (int i = 0; i < key_str.length() / 2; i = i + 1) { 
            key[i].val = new BigInteger(key_str.substring(2 * i, 2 * i + 2), 16); 
          } 
           
          for (int i = 0; i < iv_str.length() / 2; i = i + 1) { 
            iv[i].val = new BigInteger(iv_str.substring(2 * i, 2 * i + 2), 16); 
          } 
           
          SN.val = BigInteger.ZERO; 
           
          for (int i = 0; i < dns_ct_str.length() / 2; i = i + 1) { 
            appl_ct[i].val = new BigInteger(dns_ct_str.substring(2 * i, 2 * i + 2), 16); 
          } 
          for (int i = dns_ct_str.length() / 2; i < 255; i = i + 1) { 
            appl_ct[i].val = new BigInteger("0", 16); 
          } 
           
        } catch (Exception ex) { 
          System.out.println("Error: Issue with entering inputs."); 
        } 
         
         
         
    } 
    post { 
        System.out.println("Circuit Output: "); 
        // for (int i = 0; i < output.length; i++) { 
          System.out.print(String.format("%1$02x", output[i].val)); 
        } 
         
        System.out.print(output_Fp.val.toString(16)); 
         
    } 
  } 
   
   
   
  public static void main(string[] args) { 
    Config.arithOptimizerNumThreads = 8; 
    Config.arithOptimizerIncrementalMode = false; 
    Config.multivariateExpressionMinimization = false; 
     
    Config.writeCircuits = true; 
    Config.outputFilesPath = "."; 
     
  } 
   
}