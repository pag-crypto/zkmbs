
public class HTTPFirewall { 
   
  // /* The entry function for this class is at the bottom */ 
   
  // The string 'HTTP/1.1' in ASCII 
   
  public static final int[] http11_ints = {0x48, 0x54, 0x54, 0x50, 0x2f, 0x31, 0x2e, 0x31}; 
   
  // Carriage Return (CR) and Line Feed (LF) chars in ASCII 
   
  public static final int cr_int = 0x0d; 
   
  public static final int lf_int = 0x0a; 
   
  // We assume the HTTP message is of at most 500 bytes 
   
  public static final int HTTP_REQUEST_MAX_LENGTH = 500; 
   
   
  // This function searches through the entire http message 
  // and returns the first index with character CR that is followed by character LF 
  // That is, http_msg[i] || http_msg[i+1] = CR || LF  
   
  private static uint_8 get_first_crlf_index(uint_8[] http_msg) { 
     
    uint_16 cr = uint_16(cr_int); 
    uint_16 lf = uint_16(lf_int); 
     
    // Create one 16-bit integer by concatenating cr and lf 
    uint_16 CRLF_CONCAT = (uint_16(cr) << 8) | (uint_16(lf)); 
     
     
    // A bit to indicate if CRLF has been found 
    uint_1 not_found = uint_1(1); 
     
    uint_8 first_crlf_index = uint_8(0); 
     
    // We must search through the entire message  
    for (int i = 1; i < HTTP_REQUEST_MAX_LENGTH; i++) { 
       
      // Record the current and previous characters 
      uint_16 curr_char = uint_16(http_msg[i]); 
      uint_8 prev_char = http_msg[i - 1]; 
       
      // Concatenate prev_char || curr_char into one 16 bit integer  
      uint_16 curr_concat = ((uint_16(prev_char) << 8) | uint_16(curr_char)); 
       
      // Compare CRLF_CONCAT with the current concatenation 
      if (CRLF_CONCAT EQ curr_concat) { 
         
        // We must set first_crlf_index to be i-1 only the first time we enter this loop. 
        // We could use nested loops, 
        // but we do this funny assignment method because of issues with xJsnark's optimizer with some nested loops. 
        // Note that this if_clause is entered multiple times and only the first entry must be recorded. 
        first_crlf_index = uint_8(i - 1) * not_found + first_crlf_index; 
         
        not_found = uint_1(0); 
      } 
    } 
     
    return first_crlf_index; 
  } 
   
  // This function verifies that the 8 chars preceding the first_crlf_index in http_msg_ram are 'HTTP/1.1' 
   
  private static void match_http(RAM <uint_8> http_msg_ram, uint_8 first_crlf_index) { 
    uint_8[] http11 = uint_8(http11_ints); 
     
    // Perform the verification using the input RAM 
    // We require a RAM as we access indices based on the first_crlf_index, which is variable 
    // and not known at the creation of the circuit. 
    for (int i = 0; i < 8; i++) { 
      // If verifyEq fails, the proof generation fails 
      verifyEq ( http_msg_ram[first_crlf_index - uint_8(i + 1)] , http11[7 - i] ); 
    } 
  } 
   
   
  // The function does the following; 
  // (1) Find the first index where the CRLF characters appear (numbers 13, 10 in decimal) 
  // (2) Verify the 8 chars preceding the first CRLF is 'HTTP/1.1' 
   
  public static uint_8 test_firewall(uint_8[] http_msg) { 
     
    // Get the first index where CRLF appears 
    uint_8 first_crlf_index = get_first_crlf_index(http_msg); 
     
    // Create a RAM from the http message. 
    // RAM is required as the first CRLF location is variable 
    RAM <uint_8> http_msg_ram = INIT_RAM <uint_8>(uint_8(http_msg)); 
     
    // Verifies the http string before the CRLF 
    match_http(http_msg_ram, first_crlf_index); 
     
    return first_crlf_index; 
  } 
   
   
}