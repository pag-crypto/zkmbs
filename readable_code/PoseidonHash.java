public class PoseidonHash {

	// constant used in Poseidon Hash (8 input, bn254) 
	// The same as the one in circomlib: https://github.com/iden3/circomlib/blob/master/circuits/poseidon_constants.circom
	public static string[][] POSEIDON_C = {{
		// the actual strings are omitted for space
	}};

	// 2-input Posedion Hash, each input is F_p element 
// The same as the one in circomlib: https://github.com/iden3/circomlib/blob/master/circuits/poseidon.circom 
 
public static F_p poseidon_hash(F_p[] input) { 
   
  if (input.length != 2) { throw new IllegalArgumentException("This method only accepts 2 Fp elements as inputs"); } 
   
  int nInput = 2; 
  int t = nInput + 1; 
  int[] N_ROUND_P = {56, 57, 56, 60, 60, 63, 64, 63}; 
   
  F_p[] C = F_p(POSEIDON_C[t - 2]); 
  F_p[][] M = new F_p[t][t]; 
   
  for (int i = 0; i < t; i++) { 
    M[i] = F_p(POSEIDON_M[t - 2][i]); 
  } 
   
  int nRoundsF = 8; 
  int nRoundsP = N_ROUND_P[t - 2]; 
   
  F_p[] state = new F_p[t]; 
  state[0] = F_p("0"); 
   
  for (int i = 0; i < nInput; i++) { 
    state[i + 1] = input[i]; 
  } 
   
  // This is computation in each round, do ark, abox and then mix 
  // Here we merge different rounds in the same sbox function! 
  for (int i = 0; i < nRoundsF + nRoundsP; i++) { 
    state = ark(state, C, i * t); 
    state = sbox(nRoundsF, nRoundsP, state, i); 
    state = mix(state, M); 
  } 
   
  F_p output = state[0]; 
   
  return output; 
} 
 
// 8-input Posedion Hash, each input is F_p element 
// The same as the one in circomlib: https://github.com/iden3/circomlib/blob/master/circuits/poseidon.circom 
 
public static F_p poseidon_hash_8(F_p[] input) { 
   
  if (input.length != 8) { throw new IllegalArgumentException("This method only accepts 2 Fp elements as inputs"); } 
   
  int nInput = 8; 
  int t = nInput + 1; 
  int[] N_ROUND_P = {56, 57, 56, 60, 60, 63, 64, 63}; 
   
  F_p[] C = F_p(POSEIDON_C[t - 2]); 
  F_p[][] M = new F_p[t][t]; 
   
  for (int i = 0; i < t; i++) { 
    M[i] = F_p(POSEIDON_M[t - 2][i]); 
  } 
   
  int nRoundsF = 8; 
  int nRoundsP = N_ROUND_P[t - 2]; 
   
  F_p[] state = new F_p[t]; 
  state[0] = F_p("0"); 
   
  for (int i = 0; i < nInput; i++) { 
    state[i + 1] = input[i]; 
  } 
   
  // This is computation in each round, do ark, abox and then mix 
  // Here we merge different rounds in the same sbox function! 
  for (int i = 0; i < nRoundsF + nRoundsP; i++) { 
    state = ark(state, C, i * t); 
    state = sbox(nRoundsF, nRoundsP, state, i); 
    state = mix(state, M); 
  } 
   
  F_p output = state[0]; 
   
  return output; 
} 
 
// Exp5 function in Poseidon Hash, return in**5 
 
public static F_p exp5(F_p in) { 
  F_p in2; 
  F_p in4; 
  F_p out; 
   
  in2 = in * in; 
  in4 = in2 * in2; 
  out = in4 * in; 
   
  return out; 
} 
 
// Ark function in Poseidon Hash, return State+Matrix 
 
public static F_p[] ark(F_p[] state, F_p[] C, int r) { 
  for (int i = 0; i < state.length; i++) { 
    state[i] = state[i] + C[i + r]; 
  } 
   
  return state; 
} 
 
// Mix function in Poseidon Hash 
 
public static F_p[] mix(F_p[] state, F_p[][] M) { 
  F_p lc; 
  F_p[] output = new F_p[state.length]; 
   
  for (int i = 0; i < state.length; i++) { 
    lc = 0; 
    for (int j = 0; j < state.length; j++) { 
      lc = lc + M[i][j] * state[j]; 
    } 
    output[i] = lc; 
  } 
   
  return output; 
} 
 
// Sbox function in Poseidon Hash 
// Note that we do different operations in different rounds! (merge if else here) 
 
public static F_p[] sbox(int nRoundsF, int nRoundsP, F_p[] state, int i) { 
  if ((i < nRoundsF / 2) || (i >= nRoundsF / 2 + nRoundsP)) { 
    for (int j = 0; j < state.length; j++) { 
      state[j] = exp5(state[j]); 
    } 
  } else { 
    state[0] = exp5(state[0]); 
  } 
   
  return state; 
} 


}
