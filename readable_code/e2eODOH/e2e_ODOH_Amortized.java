Program ODOH_Amortized { 
 
  // This program checks that the http message sent was sent to the ODOH resolver that is hardcoded in the circuit. 
  // It verifies that the string 'targesthost=resolver_name' is present in the first line of the circuit. 
  // This includes verifying that the first time the CRLF chars appear is after the targethost label. 
  // The resolver we use is 'label1.label2.label3.label4.targethost.example.net' and is of length 50 
   
  // CIRCUIT INPUTS FOR CHANNEL OPENING (KEY SCHEDULE) - Amortized method 
  // See 'channel_openings' module for more information 
  // public 
  public F_p comm; 
  public uint_8[] http_bytes_ciphertext = new uint_8[ODOH.HTTP_REQUEST_MAX_LENGTH]; 
  // witnesses 
  public uint_8[] key = new uint_8[16]; 
  public uint_8[] iv = new uint_8[12]; 
   
  // NEW INPUTS/WITNESSES FOR ODOH EXPERIMENT 
   
  // witnesses: 
   
  // This is the start of the http label 'targethost=' 
  public uint_8 targethost_start_index; 
  // This is the start of the first CRLF characters  
  public uint_8 first_crlf_index; 
   
  inputs { 
    comm, http_bytes_ciphertext 
  } 
  outputs { 
    << ... >>  
  } 
  witnesses_AssertRange { 
    key, iv, targethost_start_index, first_crlf_index  
  } 
  witnesses { 
    << ... >>  
  } 
   
   
  // variables for logging program outputs 
  public uint_8[][] values; 
  public uint_8[] output = new uint_8[32]; 
  public F_p output_Fp; 
   
   
  public void outsource() { 
     
    // (1) CHANNEL OPENING - Amortized (see 'channel_openings' circuit) 
    uint_8[] concat = Util.concat(key, iv); 
    uint_256 concat_256 = Util.convert_8_to_256_array(Util.concat(new uint_8[4], concat))[0]; 
    F_p comm_cal = PoseidonHash.poseidon_hash(new F_p[]{0, F_p(concat_256)}); 
    verifyEq ( comm , comm_cal ); 
     
    // Decrypted application data 
    uint_8[] http_bytes = AES_GCM.aes_gcm_decrypt(key, iv, http_bytes_ciphertext); 
     
    // Perform the ODOH test that does the following: 
    // (2) Parse and Extract - the starts of the 'targethost' label and 'crlf' characters are given 
    // (3) Policy Check - verify that the hardcoded resolver name is present at targest_host_index: 
    // 'targethost=example.com' if example.com is the resolver 
    // Also verify that the targethost is in the first line (that is, before the first CRLF index) 
    ODOH.test_odoh(http_bytes, targethost_start_index, first_crlf_index); 
  } 
   
   
  SampleRun("Sample_Run1", true){ 
    pre { 
        try { 
           
          // CHANNEL OPENINGS INPUT 
          string comm_str = "2db24a9a876fc5395a0a087137c4d73de25a4f2002f384513d8427959247c4cd"; 
          string key_str = "e1a1786a0c146f4b172192141df6ffd9"; 
          string iv_str = "cf73d63f3ac141740b84c7fd"; 
           
          string dns_ct_str = "00b4b0c1bb3d83e53dc0068f1ec5131866cb450e511f099a7e4b2023117cf33bd169abd26a55c710d9edaa01c8c16d9f10084ba737104cbb11f498a0c273d3cb24330b59eee830973dba4a1bc6d6a554e3e36ac5c303f24e9a8189ab1b6cd09c172bc1ab2d303519f7a0bc07191f3c79e32caeae3de45ac29cee35ec1dc7d9462a2d2f99075c8b840a53f5df1fcb1d80793c1925365f6659c7927b669f3132a8ce12aeffd2131ff540090269db21ee16caf911d3e0764c8c257e2a7fbdc5aef7e6c9868c102d6fb8e1c5d68e966a1085e46a792109e8006763a83063e460419a6302b77f5e19f437b1fabdc4689aa341aef1ac76940c42a27ae10d9424f071d6e28e7f92b95baa727ccfc7e82850c28124c98638e7e8e4855d46ffc32a74"; 
           
          comm.val = new BigInteger(comm_str, 16); 
           
          for (int i = 0; i < key_str.length() / 2; i = i + 1) { 
            key[i].val = new BigInteger(key_str.substring(2 * i, 2 * i + 2), 16); 
          } 
           
          for (int i = 0; i < iv_str.length() / 2; i = i + 1) { 
            iv[i].val = new BigInteger(iv_str.substring(2 * i, 2 * i + 2), 16); 
          } 
           
          for (int i = 0; i < dns_ct_str.length() / 2; i = i + 1) { 
            http_bytes_ciphertext[i].val = new BigInteger(dns_ct_str.substring(2 * i, 2 * i + 2), 16); 
          } 
          for (int i = dns_ct_str.length() / 2; i < ODOH.HTTP_REQUEST_MAX_LENGTH; i = i + 1) { 
            http_bytes_ciphertext[i].val = new BigInteger("0", 16); 
          } 
           
          // END OF CHANNEL OPENING INPUTS //////////////////////////////////////////////////////////////////////////// 
           
          // ODOH INPUTS 
           
          targethost_start_index.val = new BigInteger("16"); 
           
          first_crlf_index.val = new BigInteger("108"); 
           
           
        } catch (Exception ex) { 
          System.out.println("FILE NOT FIND OR LINE NOT READ"); 
        } 
         
         
    } 
    post { 
        System.out.println("Circuit Output: "); 
        // for (int j = 0; j < values.length; j++) { 
          for (int i = 0; i < values[j].length; i++) { 
            System.out.print(String.format("%1$02x", values[j][i].val)); 
          } 
          System.out.print("\n"); 
        } 
         
        // System.out.print(output_Fp.val.toString(16)); 
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