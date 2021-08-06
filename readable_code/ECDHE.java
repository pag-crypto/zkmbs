
public class ECDHE { 
   
  // The following file performs functions required for ECDHE on curve secp256. 
  // Some functions from the ecKeyKnowledge example from xJsnark are used as is below. 
   
  // Given the two public points exchanged by the parties of the DHE 
  // and one party's secret share (the client's in our case)  
  // this function returns the final secret derived. 
   
  public static uint_8[] DHExchange(F_p256 Ax, F_p256 Ay, F_p256 Bx, F_p256 By, uint_256 sk_a) { 
     
    F_p256[] A_calculated = ECDHE.multiplyGenerator(sk_a); 
     
    verifyEq ( A_calculated[0] , Ax ); 
    verifyEq ( A_calculated[1] , Ay ); 
     
    F_p256[] secret_point = multiplyPoint(Bx, By, sk_a); 
    uint_256 secret_bits = uint_256(secret_point[0]); 
    uint_8[] DHE_secret = Util.convert_256_to_8(secret_bits); 
     
    return DHE_secret; 
  } 
   
  // Multiplies the hardcoded generator of curve secp256  
  // by the input scalar 
   
  public static F_p256[] multiplyGenerator(uint_256 sk) { 
    F_p256 Gx = F_p256("48439561293906451759052585252797914202762949526041747995844080717082404635286"); 
    F_p256 Gy = F_p256("36134250956749795798585127919587881956611106672985015071877198253568414405109"); 
     
    F_p256[] A = multiplyPoint(Gx, Gy, sk); 
    return A; 
  } 
   
   
  // THE FOLLOWING FUNCTIONS ARE FROM THE ecKeyKnowledge EXAMPLE FILE from xJsnark 
  // with only slight modifications. 
   
   
  public static F_p256[] multiplyPoint(F_p256 base_x, F_p256 base_y, uint_256 sk) { 
    // F_p256 base_x = F_p256(base_x); 
    // F_p256 base_y = F_p256(base_y); 
     
    // Additional safety checks (just precautionary) 
    // uint_256 order = uint_256("115792089210356248762697446949407573529996955224135760342422259061068512044369"); 
    // verify ( (sk < order) AND (sk NEQ uint_256(0)) ); 
     
    F_p256[][] table = new F_p256[256][2]; 
    table[0][0] = base_x; 
    table[0][1] = base_y; 
     
     
    // System.out.println("Precomputing constants (might take time in this version -- see note in the code).. "); 
    for (int i = 1; i < 256; i++) { 
      table[i] = doublePoint(table[i - 1][0], table[i - 1][1]); 
    } 
     
    // a boolean to keep track when it's safe to apply the addition formula of affine points 
    bit init = bit(false); 
     
    F_p256 p_x; 
    F_p256 p_y; 
     
    for (int i = 0; i < 256; i++) { 
      if (sk.bits[i]) { 
        if (init) { 
          F_p256[] r = addPoints(p_x, p_y, table[i][0], table[i][1]); 
          p_x = r[0]; 
          p_y = r[1]; 
        } else { 
          init = bit(true); 
          p_x = table[i][0]; 
          p_y = table[i][1]; 
        } 
      } 
    } 
     
    return new F_p256[]{p_x, p_y}; 
  } 
   
   
  public static F_p256[] addPoints(F_p256 x1, F_p256 y1, F_p256 x2, F_p256 y2) { 
    F_p256 lambda = (y2 - y1) / (x2 - x1); 
    F_p256 xr = lambda * lambda - x1 - x2; 
    F_p256 yr = lambda * (x1 - xr) - y1; 
    return new F_p256[]{xr, yr}; 
  } 
   
   
  public static F_p256[] doublePoint(F_p256 x1, F_p256 y1) { 
    F_p256 lambda = (F_p256(3) * x1 * x1 + F_p256(-3)) / (F_p256(2) * y1); 
    F_p256 xr = lambda * lambda - x1 * F_p256(2); 
    F_p256 yr = lambda * (x1 - xr) - y1; 
    return new F_p256[]{xr, yr}; 
  } 
   
}
