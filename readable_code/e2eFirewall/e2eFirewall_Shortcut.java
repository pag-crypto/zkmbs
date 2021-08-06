Program Firewall_HS { 
 
  public string input_file = "test_doh.txt"; 
   
   
  // These variables are for logging 
  public uint_8[][] values; 
  public uint_8 first_crlf_index; 
   
  // CIRCUIT INPUTS FOR CHANNEL OPENING (KEY SCHEDULE) - HS Shortcut method 
  // See 'channel_openings' module for more information 
   
  // Witnesses 
  public uint_8[] HS = new uint_8[32]; 
  public uint_8[] H_state_tr7 = new uint_8[32]; 
   
  // Public inputs 
  public uint_8[] H2 = new uint_8[32]; 
  public uint_16 pt2_len; 
  public uint_16 ct3_len; 
  public uint_8[] ct3_tail = new uint_8[128]; 
  public uint_8 ct3_tail_len; 
   
  // We call the application ciphertext message 'http_msg_ciphertext' here 
  public uint_8[] http_msg_ciphertext = new uint_8[HTTPFirewall.HTTP_REQUEST_MAX_LENGTH]; 
   
   
  // INPUTS for FIREWALL Testing 
  // No separate inputs or witnesses are required 
   
  inputs { 
    pt2_len, H2, ct3_len, ct3_tail, ct3_tail_len 
  } 
  outputs { 
    << ... >>  
  } 
  witnesses_AssertRange { 
    HS, H_state_tr7, http_msg_ciphertext  
  } 
  witnesses { 
    << ... >>  
  } 
   
   
  public void outsource() { 
     
    // (1) Channel Opening:  values[0] should be the plaintext 
    uint_32[] H_state_tr7_32 = Util.convert_8_to_32(H_state_tr7); 
    values = TLSKeySchedule.get1RTT_HS_new(HS, H2, pt2_len, ct3_len, ct3_tail, ct3_tail_len, H_state_tr7_32, http_msg_ciphertext); 
     
    uint_8[] http_msg = values[0]; 
     
    // The following function call achieves the following: 
    // (2): Parse and Extract - find the first CRLF index in the http message 
    // (3): Policy Check - verify that the string 'HTTP/1.1' is present before the first CRLF 
    // We return the found index for logging. 
    first_crlf_index = HTTPFirewall.test_firewall(http_msg); 
  } 
   
   
   
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
         
        // READ and PROCESS CIRCUIT INPUTS for Channel Opening 
        // This part is general channel opening and not specific to HTTP Firewall 
        // See channel_openings module for more information 
         
        // There are NO extra inputs for the HTTP Firewall application 
         
        try { 
          BufferedReader br = new BufferedReader(new FileReader(input_file)); 
           
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
           
          pt2_len.val = BigInteger.valueOf(pt2_line.length() / 2); 
           
          ct3_len.val = BigInteger.valueOf((ct3_line.length() / 2)); 
           
          String ct3_tail_str = get_tail_minus_36(pt2_line + ct3_line); 
           
          for (int i = 0; i < ct3_tail_str.length() / 2; i = i + 1) { 
            ct3_tail[i].val = new BigInteger(ct3_tail_str.substring(2 * i, 2 * i + 2), 16); 
          } 
           
          ct3_tail_len.val = BigInteger.valueOf(ct3_tail_str.length() / 2); 
           
          for (int i = ct3_tail_str.length() / 2; i < 128; i = i + 1) { 
            ct3_tail[i].val = new BigInteger("0"); 
          } 
           
          for (int i = 0; i < H_state_tr7_line.length() / 2; i = i + 1) { 
            H_state_tr7[i].val = new BigInteger(H_state_tr7_line.substring(2 * i, 2 * i + 2), 16); 
          } 
           
          for (int i = 0; i < dns_ct_line.length() / 2; i = i + 1) { 
            http_msg_ciphertext[i].val = new BigInteger(dns_ct_line.substring(2 * i, 2 * i + 2), 16); 
          } 
          for (int i = dns_ct_line.length() / 2; i < HTTPFirewall.HTTP_REQUEST_MAX_LENGTH; i = i + 1) { 
            http_msg_ciphertext[i].val = new BigInteger("0"); 
          } 
           
        } catch (Exception ex) { 
          System.out.println("FILE NOT FIND OR LINE NOT READ"); 
        } 
         
        // END OF CHANNEL OPENING INPUTS //////////////////////////////////////////////////////////////////////////// 
         
        // There are no separate inputs for HTTP Firewall 
    } 
    post { 
        System.out.println("HTTP Firewall Circuit Output: Proof Generated \n"); 
        System.out.print(String.format(" The first CRLF was found at index: " + first_crlf_index.val.toString(10))); 
        System.out.print("\n"); 
         
    } 
  } 
   
   
   
  public static void main(string[] args) { 
    Config.multivariateExpressionMinimization = false; 
    Config.writeCircuits = true; 
    Config.outputFilesPath = "."; 
  } 
}