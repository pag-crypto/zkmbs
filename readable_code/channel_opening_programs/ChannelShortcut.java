Program ChannelShortcut { 
 
  // NOTATION: 
  // transcript TR3 = ClientHello || ServerHello || ServerExtensions 
  // transcript TR7 = TR3 - ServerFinished_extension 
  // where the SF_extension is the final 36 bytes of TR3 
   
  /*package*/ string test_file_name = "test.txt"; 
   
   
  public static final int MAX_APPL_CT_LEN = 255; 
   
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
  public uint_8[] appl_ct = new uint_8[MAX_APPL_CT_LEN]; 
   
   
  // variables for logging 
  public uint_8[][] values; 
   
   
  inputs { 
    CH_SH_len, H2, ServExt_len, ServExt_tail_ct, ServExt_tail_len 
  } 
  outputs { 
    << ... >>  
  } 
  witnesses_AssertRange { 
    HS, SHA_H_Checkpoint, appl_ct  
  } 
  witnesses { 
    << ... >>  
  } 
   
   
  public void outsource() { 
     
    uint_32[] SHA_H_Checkpoint_32 = Util.convert_8_to_32(SHA_H_Checkpoint); 
     
    values = TLSKeySchedule.get1RTT_HS_new(HS, H2, CH_SH_len, ServExt_len, ServExt_tail_ct, ServExt_tail_len, SHA_H_Checkpoint_32, appl_ct); 
     
  } 
   
   
  // Input line is assumed to be the hex representation of a byte string S 
  // Consider string (S-36), which is S without the last 36 bytes. 
  // Divide (S-36) into whole SHA blocks (with some leftover suffix) 
  // The output of this function is the suffix of S (and not of S-36) 
  // that does not fit into a whole block. 
   
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
         
        try { 
          BufferedReader br = new BufferedReader(new FileReader(test_file_name)); 
           
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
            appl_ct[i].val = new BigInteger(dns_ct_line.substring(2 * i, 2 * i + 2), 16); 
          } 
          for (int i = dns_ct_line.length() / 2; i < MAX_APPL_CT_LEN; i = i + 1) { 
            appl_ct[i].val = new BigInteger("0"); 
          } 
           
           
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