Program DNS_Amortized_dot { 
 
  public string membership_test_file_name = "test_wildcard.txt"; 
   
  public int HEIGHT = 21; 
   
  // public inputs 
   
  // The commitment, known by both the middlebox and client 
  public F_p comm; 
   
  // TLS record Sequence Number used in the AES GCM decryption 
  public uint_64 SN; 
   
  // The application data ciphertext seen in the transcript 
  public uint_8[] dns_ct = new uint_8[255]; 
   
  // witnesses 
   
  // The key, iv known only by the client 
  public uint_8[] key = new uint_8[16]; 
  public uint_8[] iv = new uint_8[12]; 
   
  // variables for logging output 
  public uint_8[] dns_query = new uint_8[32]; 
  public F_p output_Fp; 
   
   
  // *************************** Merkle Tree Membership Testing *************************** 
   
  // The inputs below are a Merkle tree non-membership proof 
   
  // Root of the merkle tre 
  public F_p root; 
   
  // These are the domain to the left and right of the query Q 
  // had the query been in the merkle tree 
  public uint_8[] left_domain_name = new uint_8[255]; 
  public uint_8[] right_domain_name = new uint_8[255]; 
   
  // Merkle paths siblings of the left and right leaves 
  public F_p[] left_path_array = new F_p[HEIGHT]; 
  public F_p[] right_path_array = new F_p[HEIGHT]; 
   
  // The direction of the Merkle paths of the left and right leafs 
  public uint_64 left_dir; 
  public uint_64 right_dir; 
   
  // The index of the left and right leaves  
  // used to verify the direction of the paths 
  public uint_8 left_index; 
  public uint_8 right_index; 
   
   
   
   
  inputs { 
    comm, dns_ct, root 
  } 
  outputs { 
    << ... >>  
  } 
  witnesses_AssertRange { 
    key, iv, left_domain_name, right_domain_name, left_index, right_index, left_path_array, right_path_array, left_dir, right_dir  
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
    dns_query = AES_GCM.aes_gcm_decrypt(key, iv_record, dns_ct); 
     
     
    // ******************** Membership Testing *************************** 
     
    // This function returns the dns labels reversed. 
    // If the query was "7example3com" 
    // the output will be "moc.elpmaxe." 
    uint_8[][] extraction_values = LabelExtraction.extractDoTReverse(dns_query); 
     
    uint_8[] dns_labels_rev = extraction_values[0]; 
    uint_8 dns_length = extraction_values[1][0]; 
     
    // Merkle tree non-membership testing 
    uint_1 a; 
    a = non_membership.check_wildcard_python_path(dns_labels_rev, root, left_domain_name, right_domain_name, left_index, right_index, left_path_array, right_path_array, left_dir, right_dir); 
     
     
     
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
            dns_ct[i].val = new BigInteger(dns_ct_str.substring(2 * i, 2 * i + 2), 16); 
          } 
          for (int i = dns_ct_str.length() / 2; i < 255; i = i + 1) { 
            dns_ct[i].val = new BigInteger("0", 16); 
          } 
           
        } catch (Exception ex) { 
          System.out.println("Error: Issue with entering inputs."); 
        } 
         
        // *************************** Membership Testing Inputs ************************** 
        String line; 
        try { 
          BufferedReader br = new BufferedReader(new FileReader(membership_test_file_name)); 
           
          // there are 14 data points in the text file, only some of which are used in this circuit 
          for (int i = 0; i < 255; i++) { 
            line = br.readLine(); 
            // input_domain_name_wildcard[i].val = new BigInteger(line, 10); 
          } 
           
          line = br.readLine(); 
          root.val = new BigInteger(line, 10); 
           
          for (int i = 0; i < 255; i++) { 
            line = br.readLine(); 
            left_domain_name[i].val = new BigInteger(line, 10); 
          } 
           
          for (int i = 0; i < 255; i++) { 
            line = br.readLine(); 
            right_domain_name[i].val = new BigInteger(line, 10); 
          } 
           
          // path of left and right, it's F_p[HEIGHT] elements storing the hashes in the path 
          for (int i = 0; i < HEIGHT; i++) { 
            line = br.readLine(); 
            left_path_array[i].val = new BigInteger(line, 10); 
          } 
          for (int i = 0; i < HEIGHT; i++) { 
            line = br.readLine(); 
            right_path_array[i].val = new BigInteger(line, 10); 
          } 
           
          line = br.readLine(); 
          left_dir.val = new BigInteger(line, 10); 
           
          line = br.readLine(); 
          right_dir.val = new BigInteger(line, 10); 
           
           
          line = br.readLine(); 
          left_index.val = new BigInteger(line, 10); 
           
          line = br.readLine(); 
          right_index.val = new BigInteger(line, 10); 
           
           
        } catch (Exception ex) { 
          System.out.println("FILE NOT FIND OR LINE NOT READ"); 
        } 
         
         
    } 
    post { 
        System.out.println("Circuit Output: "); 
        // for (int i = 0; i < dns_query.length; i++) { 
          System.out.print(String.format("%1$02x", dns_query[i].val)); 
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