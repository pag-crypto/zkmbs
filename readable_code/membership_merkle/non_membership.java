
public class non_membership { 
   
   
  public static final int HEIGHT = 21; 
   
  // non_membership proof function 
  // It uses F_p[8] as its input_domain_name's format and takes MerkleAuthPath structure as its input format 
   
  public static uint_1 check_membership_path(F_p[] input_domain_name, F_p root, F_p left_leaf, F_p right_leaf, MerkleAuthPath authPath_left, MerkleAuthPath authPath_right) { 
     
    // compute the hash of input_domain_name in the first layer 
    // The needs an 8-input Poseidon Hash since domain name has a larger size 
    F_p leaf; 
    leaf = PoseidonHash.poseidon_hash_8(input_domain_name); 
     
    // compute the Merkle Root using left_left and right_left verifiably 
    F_p left_root = authPath_left.computeMerkleRoot(left_leaf); 
    F_p right_root = authPath_right.computeMerkleRoot(right_leaf); 
     
    // compare that roots are the same (public input root, roots computed from left and right) 
    // It can prove that both left_leaf and right_leaf exist in Merkle Tree 
    verifyEq ( left_root , root ); 
    verifyEq ( right_root , root ); 
     
    // Prove that left_leaf and right_leaf are adjacent! 
    // The directionSelector is exactly the same as leaf's index position in first layer 
    uint_8 one = 1; 
    verifyEq ( authPath_left.directionSelector + one , authPath_right.directionSelector ); 
     
    // Prove that left_leaf is indead smaller than right_leaf 
    // We can only compare uint, so we need such convert 
    uint_256 left_leaf_uint = uint_256(left_leaf); 
    uint_256 right_leaf_uint = uint_256(right_leaf); 
    uint_256 leaf_uint = uint_256(leaf); 
    verify ( left_leaf_uint < leaf_uint ); 
    verify ( leaf_uint < right_leaf_uint ); 
     
    return uint_1(1); 
  } 
   
   
  // wildcard non_membership proof function 
  // It takes uint_8[255] as its input_domain_name's format and takes Merkle Path and directionSelector directly as its input format 
   
  public static uint_1 check_wildcard_python_path(uint_8[] input_domain_name_wildcard, F_p root, uint_8[] left_domain_name, uint_8[] right_domain_name, uint_8 left_index, uint_8 right_index, F_p[] left_path_array, F_p[] right_path_array, uint_64 left_dir, uint_64 right_dir) { 
     
    // construct MerkAuthPath structure (compute root for left_path and right_path later) 
    MerkleAuthPath authPath_left = new MerkleAuthPath(left_dir, left_path_array); 
    MerkleAuthPath authPath_right = new MerkleAuthPath(right_dir, right_path_array); 
     
    // convert the left and right domain name toF_p[8] to be accepted by Poseidon Hash 
    F_p leaf; 
    F_p[] left_domain_name_input = convert_8_to_Fp_python(left_domain_name); 
    F_p[] right_domain_name_input = convert_8_to_Fp_python(right_domain_name); 
     
    // compute the hash of left and right domain name in the first layer 
    // The needs an 8-input Poseidon Hash since domain name has a larger size 
    F_p left_leaf = PoseidonHash.poseidon_hash_8(left_domain_name_input); 
    F_p right_leaf = PoseidonHash.poseidon_hash_8(right_domain_name_input); 
     
    // compute the Merkle Root using left_left and right_left verifiably 
    F_p left_root = authPath_left.computeMerkleRoot(left_leaf); 
    F_p right_root = authPath_right.computeMerkleRoot(right_leaf); 
     
    // compare that roots are the same (public input root, roots computed from left and right) 
    // It can prove that both left_leaf and right_leaf exist in Merkle Tree 
    verifyEq ( left_root , root ); 
    verifyEq ( right_root , root ); 
     
    // Prove that left_leaf and right_leaf are adjacent! 
    // The directionSelector is exactly the same as leaf's index position in first layer 
    uint_8 one = 1; 
    verifyEq ( authPath_left.directionSelector + one , authPath_right.directionSelector ); 
     
    // Prove that left_leaf is indead smaller than right_leaf 
    // This firstly checks left_index and right_index for exact matching and then checks the next is smaller 
    // check out the notes for the algorithm 
    for (int i = 0; i < 255; i++) { 
      if (uint_8(i) < left_index) { 
        verifyEq ( left_domain_name[i] , input_domain_name_wildcard[i] ); 
      } else if (uint_8(i) EQ left_index) { 
        verify ( left_domain_name[i] < input_domain_name_wildcard[i] ); 
        verify ( left_domain_name[i] NEQ uint_8(0) ); 
      } 
       
      if (uint_8(i) < right_index) { 
        verifyEq ( right_domain_name[i] , input_domain_name_wildcard[i] ); 
      } else if (uint_8(i) EQ right_index) { 
        verify ( right_domain_name[i] > input_domain_name_wildcard[i] ); 
      } 
    } 
     
    return uint_1(1); 
  } 
   
  // convert uint_8[] to F_p[8] -- the same as python script 
   
  public static F_p[] convert_8_to_Fp_python(uint_8[] byte_array) { 
     
    F_p[] Fp_array = new F_p[8]; 
    uint_2040 large_int = uint_2040(0); 
    uint_2040 tempt; 
     
    // concate uint_8[] to get uint_2040 
    for (int i = 0; i < 255; i++) { 
      tempt = uint_2040(uint_2040(byte_array[i]) << (8 * i)); 
      large_int = large_int + tempt; 
       
    } 
    //  decompse uint_2040 into bit array 
    bit[] bit_array = new bit[2040]; 
    bit_array = large_int.bits; 
     
     
    uint_254 Fp_buffer = uint_254(0); 
    uint_254 bit_tempt; 
    uint_254 Fp_tempt; 
     
    // recombine bit array into F_p array 
    // 254 bit will convert to one F_p element 
    // Note that it's not secure to convert 254bit directly since F_p is also 254 bit 
    // Implementation needs to be tuned (revise it to 253bit or increase F_p) 
    // It's enough to support 253bytes input since it's the largest size for input domain name 
    for (int i = 0; i < 8; i++) { 
      for (int j = 0; j < 253; j++) { 
        // get the bit 
        bit_tempt = uint_254(bit_array[i * 253 + j]); 
        // left shift this bit 
        Fp_tempt = bit_tempt; 
        for (int k = 0; k < j; k++) { 
          Fp_tempt = Fp_tempt * uint_2(2); 
        } 
        Fp_buffer = Fp_tempt + Fp_buffer; 
      } 
      // turn uint254 to Fp 
      Fp_array[i] = F_p(Fp_buffer); 
      Fp_buffer = 0; 
    } 
     
     
    return Fp_array; 
  } 
   
   
   
}