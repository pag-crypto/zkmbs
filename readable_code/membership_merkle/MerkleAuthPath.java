struct MerkleAuthPath { 
 
  // directionSelector chooses the direction of Merkle Path (left or right concatenation) 
  // directionSelector also happens to be the index of leaf in the first layer 
  public uint_64 directionSelector; 
  // digests stores all the hashes in a Merkle Path 
  public F_p[] digests = new F_p[non_membership.HEIGHT]; 
   
  // initialization 
   
  public MerkleAuthPath() { 
    digests = new F_p[non_membership.HEIGHT]; 
  } 
   
  // initialization 
   
  public MerkleAuthPath(uint_64 inputDS, F_p[] inputDigests) { 
    directionSelector = inputDS; 
    digests = inputDigests; 
  } 
   
  // Compute Mekle Root in a verifiable manner using left, path and direction as input 
  // Return the computed Merkle Root 
  public F_p computeMerkleRoot(F_p leaf) { 
    bit[] directionBits = directionSelector.bits; 
    F_p currentDigest = leaf; 
    F_p[] inputToNextHash = new F_p[2]; 
     
    for (int i = 0; i < non_membership.HEIGHT; i++) { 
      for (int j = 0; j < 2; j++) { 
        if (directionBits[i]) { 
          inputToNextHash[j] = j >= 1 ? currentDigest : digests[i]; 
        } else { 
          inputToNextHash[j] = j < 1 ? currentDigest : digests[i]; 
        } 
      } 
      currentDigest = PoseidonHash.poseidon_hash(inputToNextHash); 
    } 
    return currentDigest; 
  } 
   
}