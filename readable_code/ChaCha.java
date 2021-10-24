public class ChaCha {
    // Implements ChaCha20-Poly1305: https://datatracker.ietf.org/doc/html/rfc7539
    // See function "chacha20block32" for the main keystream derivation process.

    // Blocksize (and output size) is 512 bits.
    // key = 256 bits
    // nonce = 96 bits
    // A counter of under 32 bits is also given as input
    
    public static int CHACHA20_OUTPUT_SIZE = 64; 

    public static void quarter_round(uint_32[][] state, int ind1, int ind2, int ind3, int ind4) { 
        uint_32 a = state[ind1 / 4][ind1 % 4]; 
        uint_32 b = state[ind2 / 4][ind2 % 4]; 
        uint_32 c = state[ind3 / 4][ind3 % 4]; 
        uint_32 d = state[ind4 / 4][ind4 % 4]; 

        a = a + b; 
        d = d ^ a; 
        d = ROTL(d, 16); 

        c = c + d; 
        b = b ^ c; 
        b = ROTL(b, 12); 

        a = a + b; 
        d = d ^ a; 
        d = ROTL(d, 8); 

        c = c + d; 
        b = b ^ c; 
        b = ROTL(b, 7); 

        state[ind1 / 4][ind1 % 4] = a; 
        state[ind2 / 4][ind2 % 4] = b; 
        state[ind3 / 4][ind3 % 4] = c; 
        state[ind4 / 4][ind4 % 4] = d; 
       
    } 
     
     
    public static uint_8[] chacha20block(uint_8[] key, uint_8[] nonce, uint_32 count) { 

        uint_32[] key32 = Util.convert_8_to_32(key); 

        uint_32[] nonce32 = Util.convert_8_to_32(nonce); 

        return Util.convert_32_to_8(chacha20block32(key32, nonce32, count)); 
    } 
     

    public static uint_32 ROTL(uint_32 in, int dist) { 
        return (in << dist) | (in >> (32 - dist)); 
    } 
     
    
    // Inputs: key, nonce and blockcount
    // Output: the ChaCha keystream that should be xor'ed with the message 
    // 32 is to indicate the input array's element sizes
    // key is of length 256 bits 
    // nonce is of length 96 bits
    public static uint_32[] chacha20block32(uint_32[] key32, uint_32[] nonce32, uint_32 count) { 

        // Initial state matrix: first row is fixed
        uint_32[][] state = new uint_32[4][4]; 
        state[0][0] = uint_32(0x61707865); 
        state[0][1] = uint_32(0x3320646e); 
        state[0][2] = uint_32(0x79622d32); 
        state[0][3] = uint_32(0x6b206574); 

        // The arrangement of the key bytes is in a special order:
        // 1. Divide the key into 4-byte chunks: (b0, b1, b2, b3) || .... (8 total chunks)
        // 2. Then reverse the bytes of each chunk: (b3, b2, b1, b0) || .... (reverse all 8 chunks)
        for (int i = 1; i < 3; i++) { 
            for (int j = 0; j < 4; j++) { 
                state[i][j] = Util.rev_bytes_32(key32[4 * (i - 1) + j]); 
            } 
        }

        // last row of initial state
        state[3][0] = count; 
        for (int j = 0; j < 3; j++) { 
            // also reversed like thekey
            state[3][j + 1] = Util.rev_bytes_32(nonce32[j]); 
        } 

        // Save this initial state. Will be used at the end.
        uint_32[][] INIT_state = new uint_32[4][4]; 
        for (int i = 0; i < 4; i++) { 
            for (int j = 0; j < 4; j++) { 
                INIT_state[i][j] = state[i][j]; 
            } 
        } 

        int numrounds = 20; 
        for (int i = 0; i < numrounds; i += 2) { 
        quarter_round(state, 0, 4, 8, 12); 
        quarter_round(state, 1, 5, 9, 13); 
        quarter_round(state, 2, 6, 10, 14); 
        quarter_round(state, 3, 7, 11, 15); 
         
        quarter_round(state, 0, 5, 10, 15); 
        quarter_round(state, 1, 6, 11, 12); 
        quarter_round(state, 2, 7, 8, 13); 
        quarter_round(state, 3, 4, 9, 14); 
        } 

        uint_32[] keystream = new uint_32[CHACHA20_OUTPUT_SIZE / 4]; 

        for (int i = 0; i < 4; i++) { 
            for (int j = 0; j < 4; j++) { 
                // xor final state with initial state
                keystream[4 * i + j] = state[i][j] + INIT_state[i][j]; 
            } 
        } 

        for (int i = 0; i < 4; i++) { 
            for (int j = 0; j < 4; j++) { 
                // reverse the byte-order of every 4 bytes
                keystream[4 * i + j] = Util.rev_bytes_32(keystream[4 * i + j]); 
            } 
        } 

        return keystream; 
    } 
    
     
    public static uint_8[] chachaEncrypt(uint_8[] key, uint_8[] nonce, uint_8[] msg, uint_32 counter) { 
       
        // one ChaCha block is 512 bits = 64 bytes 
        int num_blocks = (msg.length / 64) + 1; 

        uint_8[] full_stream = new uint_8[0]; 

        for (int i = 0; i < num_blocks; i++) { 
            uint_8[] block_stream = chacha20block(key, nonce, uint_32(i) + counter); 
            full_stream = Util.concat(full_stream, block_stream); 
        } 

        return Util.xor_arrays_prefix(msg, full_stream, msg.length); 

        }
}
 
 
