
public class Util { 
   
  // Contains various utility functions  
  // Mostly dealing with arrays of uint_8 arrays 
  // There are many "Conversion" functions between arrays of different integer lengths (uint_8, _32, _16, ..., _256) 
   
  // ************** Concatenation Functions **************** 
   
   
   
  public static uint_8[] concat(uint_8[][] inputs) { 
    uint_8[] output = inputs[0]; 
    for (int i = 1; i < inputs.length; i++) { 
      output = concat(output, inputs[i]); 
    } 
    return output; 
  } 
   
   
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
   
   
  // ************** Conversion Functions **************** 
   
   
  public static uint_256[] convert_8_to_256_array(uint_8[] input) { 
    if (input.length % 32 != 0) { throw new IllegalArgumentException("This method only accepts multiple of 32 in bytes."); } 
     
    int len_in_256 = input.length / 32; 
    uint_256[] output = new uint_256[len_in_256]; 
     
    for (int i = 0; i < len_in_256; i++) { 
      output[i] = uint_256(0); 
      for (int j = 0; j < 32; j++) { 
        output[i] = output[i] ^ (uint_256(input[i * 32 + j]) << ((31 - j) * 8)); 
      } 
    } 
    return output; 
  } 
   
   
   
  public static uint_32[] convert_8_to_32(uint_8[] input) { 
    if (input.length % 4 != 0) { throw new IllegalArgumentException("This method only accepts multiple of 4 in bytes."); } 
     
    int len_in_32 = input.length / 4; 
    uint_32[] output = new uint_32[len_in_32]; 
     
    for (int i = 0; i < len_in_32; i++) { 
      output[i] = combine_four_bytes_to_one_32(uint_32(input[4 * i]), uint_32(input[4 * i + 1]), uint_32(input[4 * i + 2]), uint_32(input[4 * i + 3])); 
    } 
     
    return output; 
  } 
   
   
  public static uint_8[] convert_32_to_8(uint_32[] input) { 
    int len = input.length; 
    uint_8[] output = new uint_8[len * 4]; 
     
    for (int i = 0; i < len; i++) { 
      output[4 * i] = uint_8(input[i] >> 24); 
      output[4 * i + 1] = uint_8(input[i] >> 16); 
      output[4 * i + 2] = uint_8(input[i] >> 8); 
      output[4 * i + 3] = uint_8(input[i]); 
    } 
     
    return output; 
  } 
   
  //  output = a1 || a2 || a3 || a4 
   
  public static uint_32 combine_four_bytes_to_one_32(uint_32 a1, uint_32 a2, uint_32 a3, uint_32 a4) { 
    return (a1 << 24) | (a2 << 16) | (a3 << 8) | a4; 
  } 
   
   
  public static uint_64 combine_8_into_64(uint_8[] input) { 
    if (input.length != 8) { throw new IllegalArgumentException("This method only accepts 8 uint_8 values."); } 
     
    uint_64 output = uint_64(0); 
     
    for (int i = 0; i < 8; i++) { 
      // for (int j = 0; j < 8; j++) { 
        output.bits[i * 8 + j] = input[i].bits[j]; 
      } 
      output = output | (uint_64(input[i]) << ((7 - i) * 8)); 
    } 
     
    return output; 
  } 
   
   
  public static uint_256 combine_8_into_256(uint_8[] input) { 
    if (input.length != 32) { throw new IllegalArgumentException("This method only accepts 32 uint_8 values."); } 
     
    uint_256 output = uint_256(0); 
     
    for (int i = 0; i < 32; i++) { 
      // for (int j = 0; j < 8; j++) { 
        output.bits[i * 8 + j] = input[i].bits[j]; 
      } 
      output = output | (uint_256(input[i]) << ((31 - i) * 8)); 
    } 
     
    return output; 
  } 
   
   
  public static uint_8[] convert_256_to_8(uint_256 input) { 
    uint_8[] output = new uint_8[32]; 
    for (int i = 0; i < 32; i++) { 
      output[i] = uint_8(input >> ((31 - i) * 8)); 
    } 
    return output; 
  } 
   
   
   
  public static uint_8[] convert_16_to_8(long input) { 
    uint_8[] res = new uint_8[2]; 
     
    res[1] = uint_8(input); 
    res[0] = uint_8(input >> 8); 
    return res; 
  } 
   
  /* 
  public static uint_1 check_zero(uint_8[] input) { 
    uint_1 output = uint_1(0); 
     
    int len = input.length; 
     
    uint_8 or_everything = uint_8(0); 
     
    for (int i = 0; i < len; i++) { 
      or_everything = or_everything | input[i]; 
    } 
     
    for (int i = 0; i < 8; i++) { 
      output = output | uint_1(or_everything >> i); 
    } 
     
    return output ^ uint_1(1); 
  } 
  */ 
  /**/ 
  /* 
  public static uint_1 check_equality(uint_8[] a1, uint_8[] a2) { 
    uint_1 output = uint_1(1); 
     
    if (a1.length != a2.length) { throw new IllegalArgumentException("This method only checks inequality of equal length inputs."); } 
     
    int len = a1.length; 
     
    uint_8[] xored = new uint_8[len]; 
     
    for (int i = 0; i < len; i++) { 
      xored[i] = a1[i] ^ a2[i]; 
    } 
     
    return check_zero(xored); 
  } 
  */ 
   
   
  public static uint_8[] convert_4_to_8(uint_4[] input) { 
    int len_in_8 = input.length / 2; 
     
    uint_8[] output = new uint_8[len_in_8]; 
     
    for (int i = 0; i < len_in_8; i++) { 
      output[i] = ((uint_8(input[2 * i]) << 4) ^ (uint_8(input[2 * i + 1]))); 
    } 
     
    return output; 
  } 
   
   
  public static uint_8[] convert_64_to_8(uint_64 input) { 
    uint_8[] output = new uint_8[8]; 
     
    for (int i = 0; i < 8; i++) { 
      output[i] = uint_8(input >> ((7 - i) * 8)); 
    } 
     
    return output; 
  } 
   
   
   
  public static uint_8[] string_to_bytes(string str) { 
    int len = str.length(); 
    uint_8[] str_bytes = new uint_8[len]; 
    for (int i = 0; i < len; i++) { 
      str_bytes[i] = uint_8(str.charAt(i)); 
    } 
    return str_bytes; 
  } 
   
   
   
  public static uint_8[] convert_hex_string_to_bytes(string hex_string) { 
    int len = hex_string.length(); 
     
    uint_4[] output_in_4 = new uint_4[len]; 
     
    for (int i = 0; i < len; i++) { 
      char ch = hex_string.charAt(i); 
      if (ch >= 48 && ch <= 57) { 
        output_in_4[i] = uint_4(ch - 48); 
      } else if (ch >= 65 && ch <= 70) { 
        output_in_4[i] = uint_4(ch - 65 + 10); 
      } else if (ch >= 97 && ch <= 102) { 
        output_in_4[i] = uint_4(ch - 97 + 10); 
      } 
    } 
     
    uint_8[] output_in_8 = convert_4_to_8(output_in_4); 
    return output_in_8; 
  } 
   
   
  public static uint_8[] new_zero_array(int len) { 
    uint_8[] output = new uint_8[len]; 
    for (int i = 0; i < len; i++) { 
      output[i] = uint_8(0); 
    } 
    return output; 
  } 
   
   
  // ************** XOR Functions **************** 
   
   
   
  public static uint_8[] xor_arrays_prefix(uint_8[] a1, uint_8[] a2, int len) { 
    if (a1.length < len || a2.length < len) { throw new IllegalArgumentException("Arrays to XOR aren't long enough"); } 
     
    uint_8[] res = new uint_8[len]; 
    for (int i = 0; i < len; i++) { 
      res[i] = a1[i] ^ a2[i]; 
    } 
    return res; 
  } 
   
   
   
  public static uint_8[] xor_arrays(uint_8[] a1, uint_8[] a2) { 
    if (a1.length != a2.length) { throw new IllegalArgumentException("Incompatible length"); } 
     
    int len = a1.length; 
    uint_8[] res = new uint_8[len]; 
    for (int i = 0; i < len; i++) { 
      res[i] = a1[i] ^ a2[i]; 
    } 
    return res; 
     
  } 
   
  // XORs every byte of the input array with the specified byte 
   
  public static uint_8[] xor_with_byte(uint_8[] input, uint_8 b) { 
    int len = input.length; 
     
    uint_8[] res = new uint_8[len]; 
    for (int i = 0; i < len; i++) { 
      res[i] = input[i] ^ b; 
    } 
    return res; 
  } 
   
  // ************** Array Manipulation **************** 
   
   
  public uint_8[][] append_2d_array(uint_8[][] base, uint_8[] item) { 
    int len = base.length; 
    uint_8[][] output = new uint_8[len + 1][]; 
     
    for (int i = 0; i < len; i++) { 
      output[i] = base[i]; 
    } 
    output[len] = item; 
    return output; 
  } 
   
   
   
  // Reverses an input byte array of specified length 
   
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
   
  public static uint_8[] get_prefix(uint_8[] input, int prefix_length) { 
    uint_8[] output = new uint_8[prefix_length]; 
     
    for (int i = 0; i < prefix_length; i++) { 
      output[i] = input[i]; 
    } 
    return output; 
  } 
   
   
  public static uint_8[][] get_prefix_tail(uint_8[] input, int prefix_length) { 
    uint_8[] prefix = new uint_8[prefix_length]; 
     
    int full_length = input.length; 
     
    uint_8[] tail = new uint_8[full_length - prefix_length]; 
     
    for (int i = 0; i < prefix_length; i++) { 
      prefix[i] = input[i]; 
    } 
     
    for (int i = prefix_length; i < full_length; i++) { 
      tail[i - prefix_length] = input[i]; 
    } 
     
    return new uint_8[][]{prefix, tail}; 
  } 
   
   
  public static uint_8[] get_tail(uint_8[] input, int prefix_length) { 
    int full_length = input.length; 
    uint_8[] tail = new uint_8[full_length - prefix_length]; 
     
    for (int i = prefix_length; i < full_length; i++) { 
      tail[i - prefix_length] = input[i]; 
    } 
     
    return tail; 
  } 
   
}
