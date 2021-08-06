Program ChannelBaseline { 
 
  /*package*/ string test_file_name = "test.txt"; 
   
  public uint_8[][] values; 
   
  // This is the maximum length of the Client Hello || Server Hello that is supported 
  // and max length of the Server Extensions (which included the certificate) 
   
  // As input lenghts in circuits are fixed,  
  // we set parameters to define the maximum size of the ClientHello || ServerHello 
  // and the ServerExtensions  
  // For simplicity, we assume that the length of CH || SH is fixed 
  // This can be realized in practice by knowing the length of SH and padding CH with 0s accordingly  
  // 704 for resumption; 448 without resumption 
   
  public static final int MAX_CH_SH_LENGTH = 448; 
   
  // 64 for resumption; 2563 without resumption 
   
  public static final int MAX_ServExt_LENGTH = 3000; 
   
  // Witnesses 
   
  // PSK is used when doing 1RTT with resumption 
  // Without resumption, it is all 0s 
  public uint_8[] PSK = new uint_8[32]; 
   
  // The DHE secret share 
  public uint_256 sk; 
   
  // Public Inputs  
   
  // The EC points sent as part of the DHE 
  public F_p256 Ax; 
  public F_p256 Ay; 
  public F_p256 Bx; 
  public F_p256 By; 
   
  // Transcript hash H2 = Hash(CH || SH) 
  public uint_8[] H2 = new uint_8[32]; 
   
  // The transcript CH || SH  
  public uint_8[] CH_SH = new uint_8[MAX_CH_SH_LENGTH]; 
  public uint_16 CH_SH_len; 
   
  // The encrypted of the Server Extensions ciphertext, which are sent encrypted 
  public uint_8[] ServExt_ct = new uint_8[MAX_ServExt_LENGTH]; 
  public uint_16 ServExt_ct_len; 
   
  // This auxiliary input helps compute the hash of TR3 efficiently 
  // The tail is the suffix of the Extensions that does not fit inside a whole SHA block (64 bytes long) 
  public uint_8[] ServExt_ct_tail = new uint_8[64]; 
   
  // The application data ciphertext 
  public uint_8[] appl_ct = new uint_8[255]; 
   
   
   
  inputs { 
    Ax, Ay, Bx, By, H2, CH_SH, CH_SH_len, ServExt_ct, ServExt_ct_len, ServExt_ct_tail, appl_ct 
  } 
  outputs { 
    << ... >>  
  } 
  witnesses_AssertRange { 
    PSK, sk  
  } 
  witnesses { 
    << ... >>  
  } 
   
   
  public void outsource() { 
    // values = TLSKeySchedule.get1RTT_resumption(PSK, sk, Ax, Ay, Bx, By, H2, CH_SH, CH_SH_len, ServExt_ct, ServExt_ct_len, ServExt_ct_tail, appl_ct); 
     
    // This function's goal: 
    //   (1) Verify that the client's DHE key share is correct 
    //   (2) Decrypt the ServerExtensions and compute hash of transcript TR3 = CH || SH || ServExt 
    //   (3) Derive the client appl traffic keys and decrypt application data  
    values = TLSKeySchedule.get1RTT(sk, Ax, Ay, Bx, By, H2, CH_SH, CH_SH_len, ServExt_ct, ServExt_ct_len, ServExt_ct_tail, appl_ct); 
     
     
     
  } 
   
  // Outputs the part of the input that doesn't fit into a whole SHA2 block 
  public String get_last_block(String line) { 
    String output = ""; 
     
    int len = line.length() / 2; 
     
    int num_whole_blocks = len / 64; 
    int lbl = len % 64; 
     
    for (int i = 0; i < lbl; i++) { 
      int j = num_whole_blocks * 64 + i; 
      output = output + line.substring(2 * j, 2 * j + 2); 
    } 
     
    for (int i = lbl; i < 64; i++) { 
      output = output + "00"; 
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
           
          String ch_sh_line = br.readLine(); 
          String ext_line = br.readLine(); 
           
          String dns_ct_line = br.readLine(); 
           
          String H_state_tr7_line = br.readLine(); 
           
           
          for (int i = 0; i < psk_line.length() / 2; i = i + 1) { 
            PSK[i].val = new BigInteger(psk_line.substring(2 * i, 2 * i + 2), 16); 
          } 
           
          sk.val = new BigInteger(sk_line, 16); 
           
          Ax.val = new BigInteger(Ax_line, 16); 
          Ay.val = new BigInteger(Ay_line, 16); 
           
          Bx.val = new BigInteger(Bx_line, 16); 
          By.val = new BigInteger(By_line, 16); 
           
           
          for (int i = 0; i < H2_line.length() / 2; i = i + 1) { 
            H2[i].val = new BigInteger(H2_line.substring(2 * i, 2 * i + 2), 16); 
          } 
           
          for (int i = 0; i < ch_sh_line.length() / 2; i = i + 1) { 
            CH_SH[i].val = new BigInteger(ch_sh_line.substring(2 * i, 2 * i + 2), 16); 
          } 
           
          CH_SH_len.val = BigInteger.valueOf(ch_sh_line.length() / 2); 
           
          for (int i = ch_sh_line.length() / 2; i < MAX_CH_SH_LENGTH; i++) { 
            CH_SH[i].val = BigInteger.valueOf(0); 
          } 
           
           
          for (int i = 0; i < ext_line.length() / 2; i = i + 1) { 
            ServExt_ct[i].val = new BigInteger(ext_line.substring(2 * i, 2 * i + 2), 16); 
          } 
          for (int i = ext_line.length() / 2; i < MAX_ServExt_LENGTH; i = i + 1) { 
            ServExt_ct[i].val = new BigInteger("0"); 
          } 
           
          ServExt_ct_len.val = BigInteger.valueOf((ext_line.length() / 2)); 
           
          String ct_lb = get_last_block(ext_line); 
          for (int i = 0; i < ct_lb.length() / 2; i = i + 1) { 
            ServExt_ct_tail[i].val = new BigInteger(ct_lb.substring(2 * i, 2 * i + 2), 16); 
          } 
           
          for (int i = 0; i < dns_ct_line.length() / 2; i = i + 1) { 
            appl_ct[i].val = new BigInteger(dns_ct_line.substring(2 * i, 2 * i + 2), 16); 
          } 
          for (int i = dns_ct_line.length() / 2; i < 255; i = i + 1) { 
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