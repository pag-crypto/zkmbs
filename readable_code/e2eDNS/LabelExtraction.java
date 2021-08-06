
public class LabelExtraction { 
   
   
  public static final int[] b64url_encoding_table_int = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95}; 
   
   
  // This table returns the 8-bit ASCII value encoded by the given base64 character 
  // where the base64 character is itself an 8-bit ASCII value 
  // The first 43 characters are junk values that are never used. Setting them to 0 causes an error in xJsnark's optimizer, 
  // so we just used random junk values instead. 
   
  public static final int[] base64_decode_table = {0xab, 0x76, 0xca, 0x82, 0xc9, 0x7d, 0xfa, 0x59, 0x47, 0xf0, 0xad, 0xd4, 0xa2, 0xaf, 0x9c, 0xa4, 0x72, 0xc0, 0xb7, 0xfd, 0x93, 0x26, 0x36, 0x3f, 0xf7, 0xcc, 0x34, 0xa5, 0xe5, 0xf1, 0x71, 0xd8, 0x31, 0x15, 0x04, 0xc7, 0x23, 0xc3, 0x18, 0x96, 0x05, 0x9a, 0x11, 62, 0, 0, 0, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 0, 0, 0, 0, 0, 0, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 0, 0, 0, 0, 0}; 
   
   
   
  public static RAM <uint_8> b64_decode_ram; 
   
  // ASCII representations of the strings "POST" and "GET " 
   
  public static final int[] first_four_post_ints = {80, 79, 83, 84}; 
   
  public static final int[] first_four_get_bytes_int = {71, 69, 84, 32}; 
   
  // ASCII for carriage return and line feed characters 
   
  public static final int cr_int = 13; 
   
  public static final int lf_int = 10; 
   
  // The assumed maximum length of the HTTP mesages in ASCII (and the corresponding base64 size) 
   
  public static final int HTTP_REQUEST_MAX_LENGTH = 500; 
   
  public static final int DNS_QUERY_MAX_LENGTH = 255; 
   
  public static final int DNS_QUERY_MAX_B64_LENGTH = 344; 
   
   
  // This function takes an input DNS question that is serialized in the form "7example3com" 
  // and returns ".example.com" 
  // The function is more powerful and could be modified to return the lables separately 
  // but it is sufficient to return the concatenated string for the DNS application. 
  // The length is returned as it is used in reversing the string. 
   
  // offset - the byte index of the start of the question within the input dns_message 
   
  public static uint_8[][] deserializeQuestion(uint_8[] dns_message, int offset) { 
    uint_8 skip_index = uint_8(offset); 
     
    uint_8[] all_labels = new uint_8[255]; 
     
    // We keep track of the  
    uint_8 true_length = uint_8(0); 
     
    // To circumvent an error we encountered with xJsnark, 
    // we use this variable to avoid having a third nested if loop 
    uint_1 keep_reading = uint_1(1); 
     
    for (int i = 0; i + offset < 255; i++) { 
      if (uint_8(i + offset) NEQ skip_index) { 
        // keep_reading will either be 1 or 0 
        // So either the recorded value will be the array element or 0. 
        all_labels[i] = dns_message[i + offset] * uint_8(keep_reading); 
      } else if (dns_message[i + offset] NEQ uint_8(0)) { 
        true_length = true_length + dns_message[i + offset] + uint_8(1); 
        skip_index = skip_index + dns_message[i + offset] + uint_8(1); 
        all_labels[i] = uint_8(46) * uint_8(keep_reading); 
      } else { 
        keep_reading = uint_1(0); 
      } 
    } 
     
    return new uint_8[][]{all_labels, new uint_8[]{true_length}}; 
  } 
   
   
  // Same as the above function but with a variable offset (given as uint_8) type input 
   
  public static uint_8[][] deserializeQuestion(uint_8[] dns_message, uint_8 offset) { 
     
    RAM <uint_8> dns_message_ram = INIT_RAM <uint_8>(dns_message); 
     
    uint_8 skip_index = uint_8(offset); 
     
    uint_8[] all_labels = new uint_8[255]; 
     
    uint_8 true_length = uint_8(0); 
     
    uint_1 keep_reading = uint_1(1); 
     
     
    for (int i = 0; i < 255; i++) { 
      if (uint_8(i) + offset NEQ skip_index) { 
        all_labels[i] = uint_8(dns_message_ram[uint_8(i) + offset]) * uint_8(keep_reading); 
      } else if (dns_message_ram[uint_8(i) + offset] NEQ uint_8(0)) { 
        true_length = true_length + uint_8(dns_message_ram[uint_8(i) + offset]) + uint_8(1); 
        skip_index = skip_index + dns_message_ram[uint_8(i) + offset] + uint_8(1); 
        all_labels[i] = uint_8(46) * uint_8(keep_reading); 
      } else { 
        keep_reading = uint_1(0); 
      } 
    } 
     
    return new uint_8[][]{all_labels, new uint_8[]{true_length}}; 
  } 
   
   
  // This takes a DoT application data message 
  // and returns the deserialized URL that was queried: ".example.com" 
   
  public static uint_8[][] extractDoT(uint_8[] dns_message) { 
     
    return deserializeQuestion(dns_message, 14); 
     
  } 
   
  // This is the above function but also reverses the URL: "moc.elpmaxe." 
   
  public static uint_8[][] extractDoTReverse(uint_8[] dns_message) { 
     
    uint_8[][] return_values = extractDoT(dns_message); 
     
    uint_8[] all_labels = return_values[0]; 
    uint_8 true_length = return_values[1][0]; 
     
    uint_8[] reverse_label = reverse(all_labels, true_length); 
     
    return new uint_8[][]{reverse_label, new uint_8[]{true_length}}; 
  } 
   
   
  // This verifies that the HTTP message starts with "POST" or "GET "  
   
  private static void check_method(RAM <uint_8> http_bytes_ram, uint_8[] first_four_bytes) { 
    for (int i = 0; i < 4; i++) { 
      verifyEq ( http_bytes_ram[i] , first_four_bytes[i] ); 
    } 
  } 
   
  // Checks that the sequence CR || LF || CR || LF is present at the given index. 
   
  private static void check_crlf_index(RAM <uint_8> http_bytes_ram, uint_16 crlf_index) { 
     
    uint_8 cr = uint_8(13); 
    uint_8 lf = uint_8(10); 
     
    verifyEq ( http_bytes_ram[crlf_index] , cr ); 
    verifyEq ( http_bytes_ram[crlf_index + uint_16(1)] , lf ); 
    verifyEq ( http_bytes_ram[crlf_index + uint_16(2)] , cr ); 
    verifyEq ( http_bytes_ram[crlf_index + uint_16(3)] , lf ); 
  } 
   
   
  // This takes a DoH POST application data message 
  // and returns the deserialized URL that was queried: ".example.com" 
   
  public static uint_8[][] extractDoHPOST(uint_8[] http_bytes, uint_8 crlf_index) { 
     
    RAM <uint_8> http_bytes_ram = INIT_RAM <uint_8>(http_bytes); 
    uint_8[] first_four_post = uint_8(first_four_post_ints); 
     
     
    check_method(http_bytes_ram, first_four_post); 
     
    check_crlf_index(http_bytes_ram, crlf_index); 
     
     
    uint_8[][] return_values = deserializeQuestion(http_bytes, crlf_index + uint_8(16)); 
     
    return return_values; 
  } 
   
  // This is the above function but also reverses the URL: "moc.elpmaxe." 
   
  public static uint_8[][] extractDoHPOSTReverse(uint_8[] http_bytes, uint_8 crlf_index) { 
     
    uint_8[][] return_values = extractDoHPOST(http_bytes, crlf_index); 
     
    uint_8[] all_labels = return_values[0]; 
    uint_8 true_length = return_values[1][0]; 
     
    uint_8[] reverse_label = reverse(all_labels, true_length); 
     
    return new uint_8[][]{reverse_label, new uint_8[]{true_length}}; 
  } 
   
   
  // Maps a base64 character to the ASCII value  
   
  public static uint_8 decode_base64_character(uint_8 ch) { 
    uint_8 output; 
    // if (ch EQ uint_8(43)) { 
      output = uint_8(62); 
    } else if (ch EQ uint_8(47)) { 
      output = uint_8(63); 
    } else if (ch >= uint_8(97)) { 
      output = ch - uint_8(71); 
    } else if (ch >= uint_8(65)) { 
      output = ch - uint_8(65); 
    } else if (ch >= uint_8(48)) { 
      output = ch + uint_8(4); 
    } else { 
      output = uint_8(0); 
    } 
     
    output = uint_8(b64_decode_ram[uint_8(ch)]); 
     
    return output; 
  } 
   
  // Given four base64 characters, 
  // this function returns the three ASCII characters they encode. 
   
  public static uint_8[] convert_one_base64_block(uint_8[] input) { 
     
    uint_24 one_block = uint_24(0); 
     
    uint_8 converted_value; 
     
    for (int j = 0; j < 4; j++) { 
      converted_value = decode_base64_character(input[j]); 
      one_block = one_block | (uint_24(converted_value) << (6 * (3 - j))); 
    } 
     
    uint_8[] output = new uint_8[3]; 
     
    for (int i = 0; i < 3; i++) { 
      output[i] = uint_8(one_block >> (8 * (2 - i))); 
    } 
     
    return output; 
  } 
   
  // Given a base64 string 
  // this function returns the ASCII string encoded by it. 
   
  public static uint_8[] convert_base64_to_ascii(uint_8[] input, uint_16 length) { 
     
    uint_8[] output = new uint_8[258]; 
     
    uint_8[] four_bytes = new uint_8[4]; 
    uint_8[] block = new uint_8[3]; 
     
    for (int i = 0; i < 86; i++) { 
      // take 4 bytes and convert each via the table from b64 to ascii 
      for (int j = 0; j < 4; j++) { 
        four_bytes[j] = input[i * 4 + j]; 
      } 
       
      block = convert_one_base64_block(four_bytes); 
       
      for (int k = 0; k < 3; k++) { 
        output[i * 3 + k] = block[k]; 
      } 
    } 
     
    return output; 
  } 
   
   
  // This takes a DoH GET application data message 
  // and returns the deserialized URL that was queried: ".example.com" 
   
  public static uint_8[][] extractDoHGET(uint_8[] http_bytes) { 
     
    RAM <uint_8> http_bytes_ram = INIT_RAM <uint_8>(http_bytes); 
     
    b64_decode_ram = INIT_RAM <uint_8>(uint_8(base64_decode_table)); 
     
     
    // first verify that the query is a post 
    uint_8[] first_four_get = uint_8(first_four_get_bytes_int); 
    check_method(http_bytes_ram, first_four_get); 
     
    // we will skip the first   
    uint_8[] wire_format_base64 = new uint_8[DNS_QUERY_MAX_B64_LENGTH]; 
     
    uint_1 seen_space = uint_1(0); 
    uint_16 wf_length = uint_16(0); 
    for (int i = 0; i < DNS_QUERY_MAX_B64_LENGTH; i++) { 
      if (seen_space EQ uint_1(0)) { 
        if (http_bytes[i + 19] NEQ uint_8(32)) { 
          wire_format_base64[i] = http_bytes[i + 19]; 
          wf_length = wf_length + uint_16(1); 
        } else { 
          seen_space = uint_1(1); 
        } 
      } else { 
        wire_format_base64[i] = uint_8(0); 
      } 
    } 
     
    uint_8[] converted; 
    converted = convert_base64_to_ascii(wire_format_base64, wf_length); 
     
    uint_8[][] return_values = deserializeQuestion(converted, 12); 
    uint_8[] all_labels = return_values[0]; 
    uint_8 true_length = return_values[1][0]; 
     
     
    return new uint_8[][]{all_labels, return_values[1]}; 
  } 
   
  // This is the above function but also reverses the URL: "moc.elpmaxe." 
   
  public static uint_8[][] extractDoHGETReverse(uint_8[] http_bytes) { 
     
     
    uint_8[][] return_values = extractDoHGET(http_bytes); 
     
    uint_8[] all_labels = return_values[0]; 
    uint_8 true_length = return_values[1][0]; 
     
     
    uint_8[] reverse_label = reverse(all_labels, true_length); 
     
     
    return new uint_8[][]{reverse_label, new uint_8[]{true_length}}; 
  } 
   
  // Function to reverse a given string 
  // The input is padded with 0s to reach a fixed length 
  // so the actual length to be reversed is given as input. 
   
  public static uint_8[] reverse(uint_8[] input, uint_8 rev_length) { 
     
    RAM <uint_8> input_ram = INIT_RAM <uint_8>(input); 
    uint_8[] output = new uint_8[input.length]; 
     
    for (int i = 0; i < input.length; i++) { 
      if (uint_8(i) < rev_length) { 
        output[i] = input_ram[uint_8(rev_length - uint_8(i) - uint_8(1))]; 
      } 
    } 
     
    return output; 
  } 
   
  // Concatenate two strings 
   
  public static uint_8[] concat(uint_8[] a1, uint_8[] a2) { 
    int l1 = a1.length; 
    int l2 = a2.length; 
    uint_8[] res = new uint_8[l1 + l2]; 
     
    for (int i = 0; i < l1; i++) { 
      res[i] = a1[i]; 
    } 
     
    for (int i = 0; i < l2; i++) { 
      res[i + l1] = a2[i]; 
    } 
    return res; 
     
  } 
   
}