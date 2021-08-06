
public class SHA2 { 
   
   
  // This class is built on the example sha256 file from xJsnark 
  // which had code for one SHA2 compression function. 
  // The rest of the code extends this to add padding and other optimizations such as: 
  // - calling SHA with a given H-state as checkpoint 
  // - reusing SHA state when calling SHA on a string and that string's prefix 
   
  // The constant definitions and the compression function are taken from the xJsnark example 
  // with only slight modifications. 
   
  public static final long[] K_CONST = {1116352408L, 1899447441L, 3049323471L, 3921009573L, 961987163L, 1508970993L, 2453635748L, 2870763221L, 3624381080L, 310598401L, 607225278L, 1426881987L, 1925078388L, 2162078206L, 2614888103L, 3248222580L, 3835390401L, 4022224774L, 264347078L, 604807628L, 770255983L, 1249150122L, 1555081692L, 1996064986L, 2554220882L, 2821834349L, 2952996808L, 3210313671L, 3336571891L, 3584528711L, 113926993L, 338241895L, 666307205L, 773529912L, 1294757372L, 1396182291L, 1695183700L, 1986661051L, 2177026350L, 2456956037L, 2730485921L, 2820302411L, 3259730800L, 3345764771L, 3516065817L, 3600352804L, 4094571909L, 275423344L, 430227734L, 506948616L, 659060556L, 883997877L, 958139571L, 1322822218L, 1537002063L, 1747873779L, 1955562222L, 2024104815L, 2227730452L, 2361852424L, 2428436474L, 2756734187L, 3204031479L, 3329325298L}; 
   
   
  public static final long[] H_CONST = {1779033703L, 3144134277L, 1013904242L, 2773480762L, 1359893119L, 2600822924L, 528734635L, 1541459225L}; 
   
  // This function is from the xJsnark example file 
  // It performs one compression of SHA when given an input of length 16 x 32 = 256  
  // and a "checkpoint" state H 
   
  private static uint_32[] sha2_compression(uint_32[] input, uint_32[] H) { 
    if (input.length != 16) { throw new IllegalArgumentException("This method only accepts 16 32-bit words as inputs"); } 
    if (H.length != 8) { throw new IllegalArgumentException("This method only accepts 16 32-bit words as h_prev"); } 
     
    uint_32[] words = new uint_32[64]; 
    uint_32 a = H[0]; 
    uint_32 b = H[1]; 
    uint_32 c = H[2]; 
    uint_32 d = H[3]; 
    uint_32 e = H[4]; 
    uint_32 f = H[5]; 
    uint_32 g = H[6]; 
    uint_32 h = H[7]; 
     
    for (int j = 0; j < 16; j++) { 
      words[j] = input[j]; 
    } 
     
    for (int j = 16; j < 64; j++) { 
      uint_32 s0 = rotateRight(words[j - 15], 7) ^ rotateRight(words[j - 15], 18) ^ (words[j - 15] >> 3); 
      uint_32 s1 = rotateRight(words[j - 2], 17) ^ rotateRight(words[j - 2], 19) ^ (words[j - 2] >> 10); 
      words[j] = words[j - 16] + s0 + words[j - 7] + s1; 
    } 
     
    for (int j = 0; j < 64; j++) { 
      uint_32 s0 = rotateRight(a, 2) ^ rotateRight(a, 13) ^ rotateRight(a, 22); 
      uint_32 maj = (a & b) ^ (a & c) ^ (b & c); 
      uint_32 t2 = s0 + maj; 
       
       
      uint_32 s1 = rotateRight(e, 6) ^ rotateRight(e, 11) ^ rotateRight(e, 25); 
      uint_32 ch = e & f ^ ~e & g; 
      // the uint_32(.) call is to convert from java type to xjsnark type 
      uint_32 t1 = h + s1 + ch + uint_32(K_CONST[j]) + words[j]; 
      h = g; 
      g = f; 
      f = e; 
      e = d + t1; 
      d = c; 
      c = b; 
      b = a; 
      a = t1 + t2; 
    } 
     
    H[0] = H[0] + a; 
    H[1] = H[1] + b; 
    H[2] = H[2] + c; 
    H[3] = H[3] + d; 
    H[4] = H[4] + e; 
    H[5] = H[5] + f; 
    H[6] = H[6] + g; 
    H[7] = H[7] + h; 
     
    return H; 
     
  } 
   
   
  public static uint_32 rotateRight(uint_32 in, int r) { 
    return (in >> r) | (in << (32 - r)); 
  } 
   
  // Calling SH with variants based on whether we need to pad 
  // and whether we have a H_state as checkpoint 
   
  // ************************************************************ 
  // This is the main SHA calling function. 
   
  public static uint_8[] sha2(uint_8[] input) { 
     
    if (input.length == 64) { return sha2_512_length(input); } 
     
    uint_8[] padded_input = new uint_8[32]; 
    padded_input = padded_sha_input(input); 
     
    uint_32[] input_in_32 = Util.convert_8_to_32(padded_input); 
     
    if (input_in_32.length % 16 != 0) { throw new IllegalArgumentException("Padded sha must be a multiple of 512"); } 
     
     
    int num_blocks = input_in_32.length / 16; 
     
    uint_32[] h_value = uint_32(H_CONST); 
     
    uint_32[] block = new uint_32[16]; 
    for (int i = 0; i < num_blocks; i++) { 
      for (int j = 0; j < 16; j++) { 
        block[j] = input_in_32[i * 16 + j]; 
      } 
      h_value = sha2_compression(block, h_value); 
    } 
     
    return Util.convert_32_to_8(h_value); 
  } 
   
  // Function for when the input is of length 512 bits (one SHA block) 
  // This just has the pad and other state values hardcoded and is slightly smaller 
  // Insert results - ?? 
   
  public static uint_8[] sha2_512_length(uint_8[] input) { 
    uint_8[] pad = uint_8(PAD_FOR_512); 
     
    uint_32[] h_value = uint_32(H_CONST); 
     
    h_value = sha2_compression(Util.convert_8_to_32(input), h_value); 
     
    h_value = compression_with_words(uint_32(PAD_FOR_512), h_value, uint_32(WORDS_FOR_512_PAD)); 
     
    return Util.convert_32_to_8(h_value); 
     
  } 
   
   
   
  public static uint_8[] sha2_no_pad_with_checkpoint(uint_8[] input, uint_32[] H) { 
     
    uint_32[] input_in_32 = Util.convert_8_to_32(input); 
     
    if (input_in_32.length % 16 != 0) { throw new IllegalArgumentException("Padded sha must be a multiple of 512"); } 
     
    int num_blocks = input_in_32.length / 16; 
     
    uint_32[] h_value = uint_32(H); 
     
    uint_32[] block = new uint_32[16]; 
    for (int i = 0; i < num_blocks; i++) { 
      for (int j = 0; j < 16; j++) { 
        block[j] = input_in_32[i * 16 + j]; 
      } 
      h_value = sha2_compression(block, h_value); 
    } 
     
    return Util.convert_32_to_8(h_value); 
  } 
   
   
   
  public static uint_32[] sha2_no_pad(uint_8[] input) { 
     
    uint_32[] input_in_32 = Util.convert_8_to_32(input); 
     
    if (input_in_32.length % 16 != 0) { throw new IllegalArgumentException("Padded sha must be a multiple of 512"); } 
     
    int num_blocks = input_in_32.length / 16; 
     
    uint_32[] h_value = uint_32(H_CONST); 
     
    uint_32[] block = new uint_32[16]; 
    for (int i = 0; i < num_blocks; i++) { 
      for (int j = 0; j < 16; j++) { 
        block[j] = input_in_32[i * 16 + j]; 
      } 
      h_value = sha2_compression(block, h_value); 
    } 
    return h_value; 
  } 
   
   
  // Performs the specified number of sha2 compression calls on the given input 
   
  public static uint_32[] perform_compressions(uint_8[] input, uint_8 num_compressions) { 
     
    return perform_compressions(input, num_compressions, uint_32(H_CONST)); 
  } 
   
  // The above, but with an arbitary H-state 
   
  public static uint_32[] perform_compressions(uint_8[] input, uint_8 num_compressions, uint_32[] H_checkpoint) { 
     
    uint_32[] h_value = uint_32(H_checkpoint); 
     
    uint_8[] block = new uint_8[64]; 
     
    // Iterate for the maximum possible times that may be required depending on the maximum input length 
    // NOTE: input must be long enough to support maximum number of iterations 
    // int max_compressions = (Zombie1RTT_HS.MAX_CH_SH_LEN + Zombie1RTT_HS.MAX_EXT_LEN) / 64; 
    int max_compressions = (input.length) / 64; 
    for (int i = 0; i < max_compressions; i++) { 
      if (uint_8(i) < num_compressions) { 
        for (int j = 0; j < 64; j++) { 
          block[j] = input[i * 64 + j]; 
        } 
        h_value = sha2_compression(Util.convert_8_to_32(block), h_value); 
      } 
    } 
     
    return h_value; 
  } 
   
   
   
  // The next two variables were used for a minor optimization for when the padded input is just one block length 
  // which is 512 bits in SHA2 
   
  public static final long[] PAD_FOR_512 = {2147483648L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 512L}; 
   
   
  public static final long[] WORDS_FOR_512_PAD = {2147483648L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 512L, 2147483648L, 20971520L, 2117632L, 20616L, 570427392L, 575995924L, 84449090L, 2684354592L, 1518862336L, 6067200L, 1496221L, 4202700544L, 3543279056L, 291985753L, 4142317530L, 3003913545L, 145928272L, 2642168871L, 216179603L, 2296832490L, 2771075893L, 1738633033L, 3610378607L, 1324035729L, 1572820453L, 2397971253L, 3803995842L, 2822718356L, 1168996599L, 921948365L, 3650881000L, 2958106055L, 1773959876L, 3172022107L, 3820646885L, 991993842L, 419360279L, 3797604839L, 322392134L, 85264541L, 1326255876L, 640108622L, 822159570L, 3328750644L, 1107837388L, 1657999800L, 3852183409L, 2242356356L}; 
   
   
  // Function to return the hash of the empty string 
   
  public static uint_8[] hash_of_empty() { 
    int[] HASH_OF_EMPTY = {227, 176, 196, 66, 152, 252, 28, 20, 154, 251, 244, 200, 153, 111, 185, 36, 39, 174, 65, 228, 100, 155, 147, 76, 164, 149, 153, 27, 120, 82, 184, 85}; 
    return uint_8(HASH_OF_EMPTY); 
  } 
   
  // ////////////////////////////////////////////////////////////////////////////////////////////////////////////////// 
  // The following code is written to add support for padding  
  // and the optimizations used in SHA explained at the top of this file. 
   
   
  // Returns the input appended with the pad 
   
  public static uint_8[] padded_sha_input(uint_8[] input) { 
    int bit_length = 8 * input.length; 
    int last_block_length = bit_length % 512; 
     
    int num_bytes_left = (512 - last_block_length) / 8; 
    if (num_bytes_left <= 8) { 
      num_bytes_left += 64; 
    } 
     
    //  8 bytes go for the length 
    uint_8[] one_and_zeros = new uint_8[num_bytes_left - 8]; 
    one_and_zeros[0] = uint_8(128); 
     
    for (int i = 1; i < one_and_zeros.length; i++) { 
      one_and_zeros[i] = 0; 
    } 
     
    uint_8[] length_pad = new uint_8[8]; 
     
    // uint_64 bit_length_64 = uint_64(bit_length); 
     
    long bit_length_64 = bit_length; 
     
    for (int i = 0; i < 8; i++) { 
      length_pad[i] = uint_8(bit_length_64 >> (8 * (7 - i))); 
    } 
     
    uint_8[][] arrays_to_concat = {input, one_and_zeros, length_pad}; 
     
    return Util.concat(arrays_to_concat); 
  } 
   
   
  // Returns the length of the pad required for a given input length 
   
  public static uint_8 get_pad_length(uint_16 input_length) { 
     
    uint_8 last_block_length = uint_8(input_length % uint_8(64)); 
     
    uint_8 pad_length; 
     
    if (last_block_length <= uint_8(55)) { 
      pad_length = uint_8(64) - last_block_length; 
    } else { 
      pad_length = uint_8(128) - last_block_length; 
    } 
     
    return pad_length; 
  } 
   
  // Returns the actual pad required for a given input length 
   
  public static uint_8[] get_pad_from_length_in_bytes(uint_16 length) { 
     
    uint_8 pad_length = get_pad_length(length); 
     
    uint_8[] input_len_in_bits = Util.convert_64_to_8(uint_64(length) * uint_64(8)); 
     
    RAM <uint_8> inputLenRam; 
    inputLenRam = INIT_RAM <uint_8>(input_len_in_bits); 
     
    // It'll be less than 72 but 128 mades it an even multiple of 64 
    uint_8[] pad = new uint_8[128]; 
     
    pad[0] = uint_8(128); 
     
    uint_8 counter = uint_8(0); 
    for (int i = 0; i < 72; i++) { 
      if (uint_8(i) < pad_length) { 
        if ((uint_8(i) + uint_8(8) >= pad_length)) { 
          pad[i] = inputLenRam[counter]; 
          counter = counter + uint_8(1); 
        } 
      } 
    } 
     
    return pad; 
  } 
   
   
  // ///////////////////////// Functions for computing the hash of a string AND a prefix of that string 
  // without redoing the entire computation. 
  // That is, we use the H_state value of the compression function of the blocks that are common 
  // to both the string and its prefix. 
   
  // the full string ~ "full" 
  // the prefix string ~ "prefix" 
   
  // H_checkpoint - H state that is common to both prefix and full string 
  // full_length - the total length of the full string 
  // prefix_length - the length of the prefix string 
  // full_tail - the portion of the full string past the checkpoint block 
  // full_tail_length 
  // prefix_tail_length - the length of the prefix of full_tail that belongs to the prefix string 
   
  public static uint_8[][] double_sha_from_checkpoint(uint_32[] H_checkpoint, uint_16 full_length, uint_16 prefix_length, uint_8[] full_tail_string, uint_8 full_tail_length, uint_8 prefix_tail_length) { 
     
    uint_8[] prefix_output = sha2_of_tail(full_tail_string, prefix_tail_length, prefix_length, H_checkpoint); 
     
    uint_8[] full_output = sha2_of_tail(full_tail_string, full_tail_length, full_length, H_checkpoint); 
     
    return new uint_8[][]{prefix_output, full_output}; 
  } 
   
  // This is the same as the above function, but does not start with a checkpoint. 
  // Instead of a H_checkpoint being provided, the full string is given. 
  // The required number of compressions is performed to obtain H_checkpoint 
   
  public static uint_8[][] double_sha(uint_8[] full_string, uint_16 full_length, uint_16 prefix_length, uint_8[] full_tail, uint_8 full_tail_length, uint_8 prefix_tail_length) { 
     
    uint_8 num_common_blocks = uint_8(prefix_length / uint_8(64)); 
     
    // Obtain H_checkpoint by performing compressions on the full string 
    // up to the number of SHA blocks that are common to both full and prefix 
    uint_32[] H_checkpoint = perform_compressions(full_string, num_common_blocks); 
     
    uint_8[] prefix_output = sha2_of_tail(full_tail, prefix_tail_length, prefix_length, H_checkpoint); 
     
    uint_8[] full_output = sha2_of_tail(full_tail, full_tail_length, full_length, H_checkpoint); 
     
    return new uint_8[][]{prefix_output, full_output}; 
  } 
   
   
  // This function takes as input a tail string that is of length less than 128 bytes 
  // and a H_checkpoint 
  // and computes the hash of the tail with the checkpoint. 
  // The full string's length is given to calculate the pad. 
   
  public static uint_8[] sha2_of_tail(uint_8[] tail, uint_8 tail_length, uint_16 full_length, uint_32[] H_checkpoint) { 
     
    // Calculate the pad 
    uint_8 pad_len_in_bytes = get_pad_length(full_length); 
    uint_8[] pad = get_pad_from_length_in_bytes(full_length); 
     
    RAM <uint_8> padRam; 
    padRam = INIT_RAM <uint_8>(pad); 
     
    // tail_with_pad = tail || pad 
    uint_8[] tail_with_pad = new uint_8[128]; 
     
    // This is either 1 or 2 depending on the pad length 
    uint_8 num_compressions = (tail_length + pad_len_in_bytes) / uint_8(64); 
     
    for (int i = 0; i < 128; i++) { 
      if (uint_8(i) < tail_length) { 
        tail_with_pad[i] = tail[i]; 
      } else if (uint_8(i) - uint_8(tail_length) < uint_8(pad_len_in_bytes)) { 
        tail_with_pad[i] = padRam[uint_8(i) - tail_length]; 
      } else { 
        tail_with_pad[i] = uint_8(0); 
      } 
    } 
     
    uint_32[] output; 
     
    uint_32[] H_value = uint_32(H_checkpoint); 
     
    uint_8[] block = new uint_8[64]; 
     
    // Iterate for the maximum possible times, which is 2. 
    // NOTE: input must be long enough to support maximum number of iterations 
    for (int i = 0; i < 2; i++) { 
      if (uint_8(i) < num_compressions) { 
        for (int j = 0; j < 64; j++) { 
          block[j] = tail_with_pad[i * 64 + j]; 
        } 
         
        H_value = sha2_compression(Util.convert_8_to_32(block), H_value); 
      } 
    } 
     
    output = H_value; 
     
    return Util.convert_32_to_8(output); 
  } 
   
  // Given an input string, a length and a final block 
  // this function returns the hash of the first l bytes of the input 
  // The final block is provided as auxiliary input to optimize the final circuit. 
   
  public static uint_8[] sha2_of_prefix(uint_8[] input, uint_16 tr_len_in_bytes, uint_8[] last_block) { 
     
    uint_8[] output = new uint_8[32]; 
     
    uint_8 last_block_len = uint_8(tr_len_in_bytes % uint_16(64)); 
     
    uint_8 pad_len_in_bytes = get_pad_length(tr_len_in_bytes); 
    uint_8[] pad = get_pad_from_length_in_bytes(tr_len_in_bytes); 
     
    RAM <uint_8> padRam; 
    padRam = INIT_RAM <uint_8>(pad); 
     
    uint_8 num_base_compressions = uint_8(tr_len_in_bytes / uint_16(64)); 
     
    uint_32[] H_value_base = perform_compressions(input, num_base_compressions); 
     
    uint_8[] last_blocks_padded = new uint_8[128]; 
     
    uint_8[] last_block_padded = new uint_8[64]; 
     
     
    if (pad_len_in_bytes > uint_8(64)) { 
       
      for (int i = 0; i < 64; i++) { 
        if (uint_8(i) < last_block_len) { 
          last_blocks_padded[i] = last_block[i]; 
        } else { 
          last_blocks_padded[i] = padRam[uint_8(i) - last_block_len]; 
        } 
      } 
       
      for (int i = 64; i < 128; i++) { 
        last_blocks_padded[i] = padRam[uint_8(i) - last_block_len]; 
      } 
       
      output = sha2_no_pad_with_checkpoint(last_blocks_padded, H_value_base); 
       
    } else { 
      for (int i = 0; i < 64; i++) { 
        if (uint_8(i) < last_block_len) { 
          last_block_padded[i] = last_block[i]; 
        } else { 
          last_block_padded[i] = padRam[uint_8(i) - last_block_len]; 
        } 
      } 
       
      output = sha2_no_pad_with_checkpoint(last_block_padded, H_value_base); 
       
    } 
     
    return output; 
  } 
   
   
   
   
  // Unused functions here 
   
   
  public static uint_8[][] sha2_full_and_prefix(uint_8[] input, int prefix_length) { 
     
    uint_8[] prefix = Util.get_prefix(input, prefix_length); 
     
    uint_8[] prefix_padded = padded_sha_input(prefix); 
    uint_8[] full_padded = padded_sha_input(input); 
     
    int num_common_blocks = prefix_length / 64; 
    int common_length = num_common_blocks * 64; 
     
    uint_8[] common_blocks = Util.get_prefix(input, num_common_blocks * 64); 
     
    uint_8[] prefix_tail = Util.get_tail(prefix_padded, common_length); 
    uint_8[] full_tail = Util.get_tail(full_padded, common_length); 
     
    uint_32[] H_checkpoint = sha2_no_pad(common_blocks); 
     
    uint_8[] H_prefix = sha2_no_pad_with_checkpoint(prefix_tail, H_checkpoint); 
     
    uint_8[] H_full = sha2_no_pad_with_checkpoint(full_tail, H_checkpoint); 
     
    return new uint_8[][]{H_prefix, H_full}; 
  } 
   
   
   
   
  private static uint_32[] compression_with_words(uint_32[] input, uint_32[] H, uint_32[] words) { 
    if (input.length != 16) { throw new IllegalArgumentException("This method only accepts 16 32-bit words as inputs"); } 
    if (H.length != 8) { throw new IllegalArgumentException("This method only accepts 16 32-bit words as h_prev"); } 
     
    // uint_32[] H = uint_32(H_CONST);  
     
    uint_32 a = H[0]; 
    uint_32 b = H[1]; 
    uint_32 c = H[2]; 
    uint_32 d = H[3]; 
    uint_32 e = H[4]; 
    uint_32 f = H[5]; 
    uint_32 g = H[6]; 
    uint_32 h = H[7]; 
     
    for (int j = 0; j < 64; j++) { 
      uint_32 s0 = rotateRight(a, 2) ^ rotateRight(a, 13) ^ rotateRight(a, 22); 
      uint_32 maj = (a & b) ^ (a & c) ^ (b & c); 
      uint_32 t2 = s0 + maj; 
       
       
      uint_32 s1 = rotateRight(e, 6) ^ rotateRight(e, 11) ^ rotateRight(e, 25); 
      uint_32 ch = e & f ^ ~e & g; 
      // the uint_32(.) call is to convert from java type to xjsnark type 
      uint_32 t1 = h + s1 + ch + uint_32(K_CONST[j]) + words[j]; 
      h = g; 
      g = f; 
      f = e; 
      e = d + t1; 
      d = c; 
      c = b; 
      b = a; 
      a = t1 + t2; 
    } 
     
    H[0] = H[0] + a; 
    H[1] = H[1] + b; 
    H[2] = H[2] + c; 
    H[3] = H[3] + d; 
    H[4] = H[4] + e; 
    H[5] = H[5] + f; 
    H[6] = H[6] + g; 
    H[7] = H[7] + h; 
     
    return H; 
  } 
   
   
}
