Program DNS_Shortcut_doh_get { 
 
   
  public string channel_test_file_name = "test_doh.txt"; 
  public string membership_test_file_name = "test_wildcard.txt"; 
   
  public int HEIGHT = 21; 
   
   
  // difference between DoT and DoH is the size of the dns query  
   
  public static final int MAX_DNS_CT_LEN = 500; 
   
  // This program does the two tasks below: 
  // (1) Opens a TLS 1.3 Channel to decrypt a DNS query Q 
  // (2) Tests if query Q is part of a blocklist 
   
   
  // ********************* Channel Opening inputs and witnesses  
  // See channel_openings module, class ChannelShortcut for more information 
   
  // **** private witnessses 
   
  // Handshake secret HS 
  public uint_8[] HS = new uint_8[32]; 
   
  // SHA_H_Checkpoint - the H-state of SHA up to the last whole block of TR7 
  public uint_8[] SHA_H_Checkpoint = new uint_8[32]; 
   
  // **** public inputs  
   
  // transcript hash H2 = hash( CH || SH) 
  public uint_8[] H2 = new uint_8[32]; 
   
  // length of ClientHello || ServerHello  
  public uint_16 CH_SH_len; 
   
  // length of the Server Extensions 
  public uint_16 ServExt_len; 
   
  // the suffix of TR3 that is after the checkpoint block 
  // which is the last whole SHA block that fits in TR7 
  public uint_8[] ServExt_tail_ct = new uint_8[128]; 
   
  // length of the above 
  public uint_8 ServExt_tail_len; 
   
  // the application data sent 
  public uint_8[] dns_ct = new uint_8[MAX_DNS_CT_LEN]; 
   
   
  // ********************* Membership testing Opening inputs and witnesses  
   
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
   
   
  // ********************* Membership testing Opening inputs and witnesses  
   
   
   
  // variables for logging 
  public uint_8[][] values; 
   
   
  inputs { 
    CH_SH_len, H2, ServExt_len, ServExt_tail_ct, ServExt_tail_len, root 
  } 
  outputs { 
    << ... >>  
  } 
  witnesses_AssertRange { 
    HS, SHA_H_Checkpoint, dns_ct, left_domain_name, right_domain_name, left_path_array, right_path_array, left_dir, right_dir, left_index, right_index  
  } 
  witnesses { 
    << ... >>  
  } 
   
   
  public void outsource() { 
     
    // ********************* Channel Opening ********************** 
     
    uint_32[] SHA_H_Checkpoint_32 = Util.convert_8_to_32(SHA_H_Checkpoint); 
     
    values = TLSKeySchedule.get1RTT_HS_new(HS, H2, CH_SH_len, ServExt_len, ServExt_tail_ct, ServExt_tail_len, SHA_H_Checkpoint_32, dns_ct); 
     
    uint_8[] dns_query_bytes = values[0]; 
     
    // The dns query is of the format: "7example3com" 
    // from which we extract just ".example.com" 
    // and then reverse it to get dns_lables_rev = "moc.elpmaxe." 
    uint_8[][] extraction_values = LabelExtraction.extractDoHGETReverse(dns_query_bytes); 
    uint_8[] dns_labels_rev = extraction_values[0]; 
     
    // This tests the membership in the merkle tree 
    uint_1 a; 
    a = non_membership.check_wildcard_python_path(dns_labels_rev, root, left_domain_name, right_domain_name, left_index, right_index, left_path_array, right_path_array, left_dir, right_dir); 
     
  } 
   
   
  // See module channel_openings, class ChannelShortcut for a description of this function 
  public String get_tail_minus_36(String line) { 
     
    String output = ""; 
     
    int len = (line.length() / 2); 
     
    int num_whole_blocks = (len - 36) / 64; 
     
    int tail_len = len - num_whole_blocks * 64; 
     
    for (int i = 0; i < tail_len; i++) { 
      int j = num_whole_blocks * 64 + i; 
      output = output + line.substring(2 * j, 2 * j + 2); 
    } 
     
    return output; 
  } 
   
   
   
  SampleRun("Sample_Run1", true){ 
    pre { 
         
         
         
        // **************** Channel Opening Inputs ***************************************** 
         
        try { 
          BufferedReader br = new BufferedReader(new FileReader(channel_test_file_name)); 
           
          String psk_line = br.readLine(); 
          String sk_line = br.readLine(); 
          String Ax_line = br.readLine(); 
          String Ay_line = br.readLine(); 
          String Bx_line = br.readLine(); 
          String By_line = br.readLine(); 
          String HS_line = br.readLine(); 
           
          String H2_line = br.readLine(); 
          String H7_line = br.readLine(); 
          String H3_line = br.readLine(); 
           
          String SF_line = br.readLine(); 
           
          String pt2_line = br.readLine(); 
          String ct3_line = br.readLine(); 
           
          String dns_ct_line = br.readLine(); 
           
          String H_state_tr7_line = br.readLine(); 
           
           
          for (int i = 0; i < HS_line.length() / 2; i = i + 1) { 
            HS[i].val = new BigInteger(HS_line.substring(2 * i, 2 * i + 2), 16); 
          } 
           
          for (int i = 0; i < H2_line.length() / 2; i = i + 1) { 
            H2[i].val = new BigInteger(H2_line.substring(2 * i, 2 * i + 2), 16); 
          } 
           
           
          CH_SH_len.val = BigInteger.valueOf(pt2_line.length() / 2); 
           
           
          ServExt_len.val = BigInteger.valueOf((ct3_line.length() / 2)); 
           
          // Compute the tail 
          // This is used for efficient SHA computation 
          String ct3_tail_str = get_tail_minus_36(pt2_line + ct3_line); 
           
          for (int i = 0; i < ct3_tail_str.length() / 2; i = i + 1) { 
            ServExt_tail_ct[i].val = new BigInteger(ct3_tail_str.substring(2 * i, 2 * i + 2), 16); 
          } 
           
          ServExt_tail_len.val = BigInteger.valueOf(ct3_tail_str.length() / 2); 
           
          for (int i = ct3_tail_str.length() / 2; i < 128; i = i + 1) { 
            ServExt_tail_ct[i].val = new BigInteger("0"); 
          } 
           
          // read the H_state 
          for (int i = 0; i < H_state_tr7_line.length() / 2; i = i + 1) { 
            SHA_H_Checkpoint[i].val = new BigInteger(H_state_tr7_line.substring(2 * i, 2 * i + 2), 16); 
          } 
           
          for (int i = 0; i < dns_ct_line.length() / 2; i = i + 1) { 
            dns_ct[i].val = new BigInteger(dns_ct_line.substring(2 * i, 2 * i + 2), 16); 
          } 
          for (int i = dns_ct_line.length() / 2; i < MAX_DNS_CT_LEN; i = i + 1) { 
            dns_ct[i].val = new BigInteger("0"); 
          } 
           
           
        } catch (Exception ex) { 
          System.out.println("FILE NOT FIND OR LINE NOT READ"); 
        } 
         
         
        // *************************** Read inputs for Membership Testing ********************* 
         
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
         
        for (int j = 0; j < values.length; j++) { 
          for (int i = 0; i < values[j].length; i++) { 
            System.out.print(String.format("%1$02x", values[j][i].val)); 
          } 
          System.out.print("\n"); 
        } 
    } 
  } 
   
   
  public static void main(string[] args) { 
    Config.multivariateExpressionMinimization = false; 
    Config.writeCircuits = true; 
    Config.outputFilesPath = "."; 
     
  } 
}