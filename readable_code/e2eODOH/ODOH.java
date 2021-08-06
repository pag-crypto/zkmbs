
public class ODOH { 
   
   
  public static final int HTTP_REQUEST_MAX_LENGTH = 500; 
   
  // the string 'HTTP/1.1' in ASCII 
   
  public static final int[] http11_ints = {0x48, 0x54, 0x54, 0x50, 0x2f, 0x31, 0x2e, 0x31}; 
   
  // the string 'targethost=' in ASCII 
   
  public static final int[] targesthosteq_ints = {116, 97, 114, 103, 101, 116, 104, 111, 115, 116, 61}; 
   
  // hardcoded resolver name '' 
   
  public static final int[] resolver_name_ints = {108, 97, 98, 101, 108, 49, 46, 108, 97, 98, 101, 108, 50, 46, 108, 97, 98, 101, 108, 51, 46, 108, 97, 98, 101, 108, 52, 46, 116, 97, 114, 103, 101, 116, 104, 111, 115, 116, 46, 101, 120, 97, 109, 112, 108, 101, 46, 110, 101, 116}; 
   
   
  public static final int resolver_name_length = 50; 
   
  // Carriage Return (CR) and Line Feed (LF) chars in ASCII 
   
  public static final int cr_int = 0x0d; 
   
  public static final int lf_int = 0x0a; 
   
   
  // Function to verify that the first time the two characters CRLF appear 
  // is indeed at first_crlf_index 
   
  private static void verify_first_crlf(RAM <uint_8> http_bytes_ram, uint_16 first_crlf_index) { 
     
    uint_16 cr = uint_16(cr_int); 
    uint_16 lf = uint_16(lf_int); 
     
     
    uint_16 CRLF_CONCAT = (uint_16(cr) << 16) | (uint_16(lf)); 
     
    // this ensures that the CRLF patten isn't present before first_crlf_index 
    for (int i = 1; i < HTTP_REQUEST_MAX_LENGTH; i++) { 
      if (uint_16(i) < first_crlf_index) { 
        uint_16 prev_char = http_bytes_ram[i - 1]; 
        uint_16 curr_char = http_bytes_ram[i]; 
        uint_16 curr_concat = ((uint_16(prev_char) << 16) | uint_16(curr_char)); 
        verify ( CRLF_CONCAT NEQ curr_concat ); 
      } 
    } 
     
    // check that CRLF is present at first_crlf_index 
    verifyEq ( cr , http_bytes_ram[first_crlf_index] ); 
    verifyEq ( lf , http_bytes_ram[first_crlf_index + uint_8(1)] ); 
     
  } 
   
  // Inputs are the http_message, the index where 'targethost=' string appears  
  //  and the first CRLF index. 
  // The function does the following: 
  // (1) Verify that the 11 chars starting at targethost_index is 'targethost=" 
  // (2) Verify that the next 'resolver_name_length' chars are the resolve name that is hardcoded into the circuit 
  // (3) Then verify that CRLF does not appear before the claimed first_crlf_index 
   
  public static void test_odoh(uint_8[] http_bytes, uint_8 targethost_index, uint_8 first_crlf_index) { 
     
    RAM <uint_8> http_bytes_ram = INIT_RAM <uint_8>(uint_8(http_bytes)); 
     
    uint_8[] targethost_label = uint_8(targesthosteq_ints); 
    uint_8[] resolver_name = uint_8(resolver_name_ints); 
     
    // Does (1) 
    for (int i = 0; i < 11; i++) { 
      verifyEq ( http_bytes_ram[targethost_index + uint_8(i)] , targethost_label[i] ); 
    } 
     
    // Does (2) 
    for (int i = 0; i < resolver_name_length; i++) { 
      verifyEq ( http_bytes_ram[targethost_index + uint_8(11 + i)] , resolver_name[i] ); 
    } 
     
    // Does (3) 
    verify_first_crlf(http_bytes_ram, first_crlf_index); 
     
    verify ( targethost_index < first_crlf_index ); 
  } 
   
   
}