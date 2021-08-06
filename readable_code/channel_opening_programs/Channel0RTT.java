Program Channel0RTT { 
 
  // This class performs the 0RTT key schedule of TLS 1.3 
  // Inputs: 
  //   (1) Transcript of the 0RTT input  
  //   (2) Ciphertext of Early Data  
   
  // The middlebox will extract transcript hashes H1, H5 from the transcript  
  // as well as the 'transcript_binder' value 
  // and provide them as public inputs to the circuit. 
   
  // The client will provide the PSk as private witness to the circuit. 
   
  // Testing is done using the 0RTT trace provided in RFC 8448  
  // as we did not set up a script to generate 0RTT connections. 
   
   
  // The application data ciphertext message sent by the client 
  public uint_8[] early_data_ct = new uint_8[255]; 
   
  // H5 is a transcript hash: H5 = Hash() 
  // This can be calculated by the middlebox 
  public uint_8[] H5 = new uint_8[32]; 
   
  // This is the binder value present in the transcript 
  public uint_8[] transcript_binder = new uint_8[32]; 
   
  // H1 is a transcript hash: H1 = Hash() 
  // This can be calculated by the middlebox 
  public uint_8[] H1 = new uint_8[32]; 
   
  // PSK is a witness to the circuit known only by the client and server 
  public uint_8[] PSK = new uint_8[32]; 
   
  // Variable used for logging output. 
  public uint_8[] early_data_pt; 
   
   
  inputs { 
    H5, transcript_binder, H1, early_data_ct 
  } 
  outputs { 
    << ... >>  
  } 
  witnesses_AssertRange { 
    PSK  
  } 
   
  witnesses { 
    << ... >>  
  } 
   
   
  public void outsource() { 
     
    // Goals of this function: 
    // (1) Verify that the PSK used is correct by compared the derived and transcript binders 
    // (2) Derive the client application traffic key 
    // (3) Decrypt the early data ciphertext 
    uint_8[] value = TLSKeySchedule.get0RTT(PSK, H1, H5, transcript_binder, early_data_ct); 
     
    early_data_pt = value; 
  } 
   
   
  SampleRun("Sample_Run1", true){ 
    pre { 
         
        // We will use the example 0RTT connection provided in RFC 8448 for testing 
         
        int[] int_PSK = {78, 205, 14, 182, 236, 59, 77, 135, 245, 214, 2, 143, 146, 44, 164, 197, 133, 26, 39, 127, 212, 19, 17, 201, 230, 45, 44, 148, 146, 225, 196, 243}; 
        for (int i = 0; i < PSK.length; i++) { 
          PSK[i].val = BigInteger.valueOf(int_PSK[i]); 
        } 
         
         
        int[] int_H_1 = {8, 173, 15, 160, 93, 124, 114, 51, 177, 119, 91, 162, 255, 159, 76, 91, 139, 89, 39, 107, 127, 34, 127, 19, 169, 118, 36, 95, 93, 150, 9, 19}; 
        for (int i = 0; i < H1.length; i++) { 
          H1[i].val = BigInteger.valueOf(int_H_1[i]); 
        } 
         
         
        int[] int_H_5 = {99, 34, 75, 46, 69, 115, 242, 211, 69, 76, 168, 75, 157, 0, 154, 4, 246, 190, 158, 5, 113, 26, 131, 150, 71, 58, 239, 160, 30, 146, 74, 20}; 
        for (int i = 0; i < H5.length; i++) { 
          H5[i].val = BigInteger.valueOf(int_H_5[i]); 
        } 
         
         
        int[] int_REAL_BINDER = {58, 221, 79, 178, 216, 253, 248, 34, 160, 202, 60, 247, 103, 142, 245, 232, 141, 174, 153, 1, 65, 197, 146, 77, 87, 187, 111, 163, 27, 158, 95, 157}; 
        for (int i = 0; i < transcript_binder.length; i++) { 
          transcript_binder[i].val = BigInteger.valueOf(int_REAL_BINDER[i]); 
        } 
         
         
        int[] int_ciphertext = {217, 37, 254, 153, 246, 129, 12, 57, 234, 105, 207, 149, 161, 123, 236, 111, 92, 174, 236, 18, 110, 51, 147, 37, 192, 78, 33, 106, 217, 126, 122, 50}; 
        for (int i = 0; i < int_ciphertext.length; i++) { 
          early_data_ct[i].val = BigInteger.valueOf(int_ciphertext[i]); 
        } 
        for (int i = early_data_ct.length; i < 255; i++) { 
          early_data_ct[i].val = BigInteger.ZERO; 
        } 
         
    } 
    post { 
        System.out.println("Circuit Output: "); 
        for (int i = 0; i < early_data_pt.length; i++) { 
          System.out.print(String.format("%1$02x", early_data_pt[i].val)); 
           
        } 
    } 
  } 
   
   
   
  public static void main(string[] args) { 
    Config.multivariateExpressionMinimization = false; 
    Config.writeCircuits = true; 
    Config.outputFilesPath = "."; 
     
  } 
}