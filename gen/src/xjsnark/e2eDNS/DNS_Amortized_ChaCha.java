package xjsnark.e2eDNS;

/*Generated by MPS */

import backend.structure.CircuitGenerator;
import backend.config.Config;
import backend.eval.SampleRun;
import java.math.BigInteger;
import java.io.BufferedReader;
import java.io.FileReader;
import backend.auxTypes.FieldElement;
import backend.auxTypes.UnsignedInteger;
import util.Util;
import xjsnark.poseidon.PoseidonHash;
import xjsnark.chacha.ChaCha;
import xjsnark.membership_merkle.non_membership;
import backend.eval.CircuitEvaluator;

public class DNS_Amortized_ChaCha extends CircuitGenerator {



  public static void main(String[] args) {
    Config.arithOptimizerNumThreads = 8;
    Config.multivariateExpressionMinimization = true;

    Config.writeCircuits = true;
    Config.outputFilesPath = "./circuits";

    new DNS_Amortized_ChaCha();
  }

  public DNS_Amortized_ChaCha() {
    super("DNS_Amortized_ChaCha");
    __generateCircuit();
    this.__evaluateSampleRun(new SampleRun("Sample_Run1", true) {
      public void pre() {
        try {

          // Example commitment string 
          String comm_str = "1b232aaea72bc6357b33018f4c83970e8a25a2ee5ae6f4b58f638cb87caeb4ea";

          // Key, iv that were committed to 
          String key_str = "1c9240a5eb55d38af333888604f6b5f0473917c1402b80099dca5cbc207075c0";
          String nonce_str = "000000000000000000000002";

          // query is amazon.com 
          String dns_ct_str = "45ae23cfe7cde5d736968b2b080b87df5cb3cb0b022a4e6f10e78bc02220";

          // Convert the strings to circuit input types 

          comm.mapValue(new BigInteger(comm_str, 16), CircuitGenerator.__getActiveCircuitGenerator().__getCircuitEvaluator());

          for (int i = 0; i < key_str.length() / 2; i = i + 1) {
            key[i].mapValue(new BigInteger(key_str.substring(2 * i, 2 * i + 2), 16), CircuitGenerator.__getActiveCircuitGenerator().__getCircuitEvaluator());
          }

          for (int i = 0; i < nonce_str.length() / 2; i = i + 1) {
            nonce[i].mapValue(new BigInteger(nonce_str.substring(2 * i, 2 * i + 2), 16), CircuitGenerator.__getActiveCircuitGenerator().__getCircuitEvaluator());
          }

          SN.mapValue(BigInteger.ZERO, CircuitGenerator.__getActiveCircuitGenerator().__getCircuitEvaluator());

          for (int i = 0; i < dns_ct_str.length() / 2; i = i + 1) {
            dns_ct[i].mapValue(new BigInteger(dns_ct_str.substring(2 * i, 2 * i + 2), 16), CircuitGenerator.__getActiveCircuitGenerator().__getCircuitEvaluator());
          }
          for (int i = dns_ct_str.length() / 2; i < DNS_LENGTH; i = i + 1) {
            dns_ct[i].mapValue(new BigInteger("0", 16), CircuitGenerator.__getActiveCircuitGenerator().__getCircuitEvaluator());
          }

        } catch (Exception ex) {
          System.out.println("Error: Issue with entering inputs.");
        }

        // *************************** Membership Testing Inputs ************************** 
        String line;
        try {
          BufferedReader br = new BufferedReader(new FileReader(membership_test_file_name));

          // there are 14 data points in the text file, only some of which are used in this circuit 
          for (int i = 0; i < 255; i++) {
            line = br.readLine();
          }

          line = br.readLine();
          root.mapValue(new BigInteger(line, 10), CircuitGenerator.__getActiveCircuitGenerator().__getCircuitEvaluator());

          for (int i = 0; i < 255; i++) {
            line = br.readLine();
            left_domain_name[i].mapValue(new BigInteger(line, 10), CircuitGenerator.__getActiveCircuitGenerator().__getCircuitEvaluator());
          }

          for (int i = 0; i < 255; i++) {
            line = br.readLine();
            right_domain_name[i].mapValue(new BigInteger(line, 10), CircuitGenerator.__getActiveCircuitGenerator().__getCircuitEvaluator());
          }

          // path of left and right, it's F_p[HEIGHT] elements storing the hashes in the path 
          for (int i = 0; i < HEIGHT; i++) {
            line = br.readLine();
            left_path_array[i].mapValue(new BigInteger(line, 10), CircuitGenerator.__getActiveCircuitGenerator().__getCircuitEvaluator());
          }
          for (int i = 0; i < HEIGHT; i++) {
            line = br.readLine();
            right_path_array[i].mapValue(new BigInteger(line, 10), CircuitGenerator.__getActiveCircuitGenerator().__getCircuitEvaluator());
          }

          line = br.readLine();
          left_dir.mapValue(new BigInteger(line, 10), CircuitGenerator.__getActiveCircuitGenerator().__getCircuitEvaluator());

          line = br.readLine();
          right_dir.mapValue(new BigInteger(line, 10), CircuitGenerator.__getActiveCircuitGenerator().__getCircuitEvaluator());


          line = br.readLine();
          left_index.mapValue(new BigInteger(line, 10), CircuitGenerator.__getActiveCircuitGenerator().__getCircuitEvaluator());

          line = br.readLine();
          right_index.mapValue(new BigInteger(line, 10), CircuitGenerator.__getActiveCircuitGenerator().__getCircuitEvaluator());


        } catch (Exception ex) {
          System.out.println("FILE NOT FIND OR LINE NOT READ");
        }


      }
      public void post() {
        System.out.println("Circuit Output: ");

        System.out.print(output_Fp.getValueFromEvaluator(CircuitGenerator.__getActiveCircuitGenerator().__getCircuitEvaluator()).toString(16));

      }

    });

  }



  public void __init() {
    membership_test_file_name = "test_wildcard.txt";
    HEIGHT = 21;
    DNS_LENGTH = 255;
    comm = new FieldElement(new BigInteger("21888242871839275222246405745257275088548364400416034343698204186575808495617"), new BigInteger("0"));
    SN = new UnsignedInteger(64, new BigInteger("0"));
    dns_ct = (UnsignedInteger[]) UnsignedInteger.createZeroArray(CircuitGenerator.__getActiveCircuitGenerator(), new int[]{DNS_LENGTH}, 8);
    key = (UnsignedInteger[]) UnsignedInteger.createZeroArray(CircuitGenerator.__getActiveCircuitGenerator(), new int[]{32}, 8);
    nonce = (UnsignedInteger[]) UnsignedInteger.createZeroArray(CircuitGenerator.__getActiveCircuitGenerator(), new int[]{12}, 8);
    dns_query = (UnsignedInteger[]) UnsignedInteger.createZeroArray(CircuitGenerator.__getActiveCircuitGenerator(), new int[]{32}, 8);
    output_Fp = new FieldElement(new BigInteger("21888242871839275222246405745257275088548364400416034343698204186575808495617"), new BigInteger("0"));
    root = new FieldElement(new BigInteger("21888242871839275222246405745257275088548364400416034343698204186575808495617"), new BigInteger("0"));
    left_domain_name = (UnsignedInteger[]) UnsignedInteger.createZeroArray(CircuitGenerator.__getActiveCircuitGenerator(), new int[]{255}, 8);
    right_domain_name = (UnsignedInteger[]) UnsignedInteger.createZeroArray(CircuitGenerator.__getActiveCircuitGenerator(), new int[]{255}, 8);
    left_path_array = (FieldElement[]) FieldElement.createZeroArray(CircuitGenerator.__getActiveCircuitGenerator(), new int[]{HEIGHT}, new BigInteger("21888242871839275222246405745257275088548364400416034343698204186575808495617"));
    right_path_array = (FieldElement[]) FieldElement.createZeroArray(CircuitGenerator.__getActiveCircuitGenerator(), new int[]{HEIGHT}, new BigInteger("21888242871839275222246405745257275088548364400416034343698204186575808495617"));
    left_dir = new UnsignedInteger(64, new BigInteger("0"));
    right_dir = new UnsignedInteger(64, new BigInteger("0"));
    left_index = new UnsignedInteger(8, new BigInteger("0"));
    right_index = new UnsignedInteger(8, new BigInteger("0"));
  }

  public String membership_test_file_name;
  public int HEIGHT;
  public int DNS_LENGTH;
  public FieldElement comm;
  public UnsignedInteger SN;
  public UnsignedInteger[] dns_ct;
  public UnsignedInteger[] key;
  public UnsignedInteger[] nonce;
  public UnsignedInteger[] dns_query;
  public FieldElement output_Fp;
  public FieldElement root;
  public UnsignedInteger[] left_domain_name;
  public UnsignedInteger[] right_domain_name;
  public FieldElement[] left_path_array;
  public FieldElement[] right_path_array;
  public UnsignedInteger left_dir;
  public UnsignedInteger right_dir;
  public UnsignedInteger left_index;
  public UnsignedInteger right_index;

  @Override
  public void __defineInputs() {
    super.__defineInputs();
    SN = UnsignedInteger.createInput(this, 64);
    comm = FieldElement.createInput(this, new BigInteger("21888242871839275222246405745257275088548364400416034343698204186575808495617"));
    root = FieldElement.createInput(this, new BigInteger("21888242871839275222246405745257275088548364400416034343698204186575808495617"));



    dns_ct = (UnsignedInteger[]) UnsignedInteger.createInputArray(CircuitGenerator.__getActiveCircuitGenerator(), Util.getArrayDimensions(dns_ct), 8);












  }
  @Override
  public void __defineOutputs() {
    super.__defineOutputs();









  }
  @Override
  public void __defineVerifiedWitnesses() {
    super.__defineVerifiedWitnesses();

    left_index = UnsignedInteger.createVerifiedWitness(this, 8);
    right_index = UnsignedInteger.createVerifiedWitness(this, 8);
    left_dir = UnsignedInteger.createVerifiedWitness(this, 64);
    right_dir = UnsignedInteger.createVerifiedWitness(this, 64);



    key = (UnsignedInteger[]) UnsignedInteger.createVerifiedWitnessArray(CircuitGenerator.__getActiveCircuitGenerator(), Util.getArrayDimensions(key), 8);
    nonce = (UnsignedInteger[]) UnsignedInteger.createVerifiedWitnessArray(CircuitGenerator.__getActiveCircuitGenerator(), Util.getArrayDimensions(nonce), 8);
    left_domain_name = (UnsignedInteger[]) UnsignedInteger.createVerifiedWitnessArray(CircuitGenerator.__getActiveCircuitGenerator(), Util.getArrayDimensions(left_domain_name), 8);
    right_domain_name = (UnsignedInteger[]) UnsignedInteger.createVerifiedWitnessArray(CircuitGenerator.__getActiveCircuitGenerator(), Util.getArrayDimensions(right_domain_name), 8);

    left_path_array = (FieldElement[]) FieldElement.createVerifiedWitnessArray(CircuitGenerator.__getActiveCircuitGenerator(), Util.getArrayDimensions(left_path_array), new BigInteger("21888242871839275222246405745257275088548364400416034343698204186575808495617"));
    right_path_array = (FieldElement[]) FieldElement.createVerifiedWitnessArray(CircuitGenerator.__getActiveCircuitGenerator(), Util.getArrayDimensions(right_path_array), new BigInteger("21888242871839275222246405745257275088548364400416034343698204186575808495617"));














  }
  @Override
  public void __defineWitnesses() {
    super.__defineWitnesses();

















  }
  public void outsource() {

    // Compute the commitment, which is the Poseidon hash of key || iv 
    UnsignedInteger[] concat = xjsnark.util_and_sha.Util.concat(key, nonce);
    UnsignedInteger[] concat_256 = xjsnark.util_and_sha.Util.convert_8_to_256_array(xjsnark.util_and_sha.Util.concat((UnsignedInteger[]) UnsignedInteger.createZeroArray(CircuitGenerator.__getActiveCircuitGenerator(), new int[]{20}, 8), concat));
    FieldElement comm_cal = PoseidonHash.poseidon_hash(new FieldElement[]{FieldElement.instantiateFrom(new BigInteger("21888242871839275222246405745257275088548364400416034343698204186575808495617"), concat_256[0]).copy(), FieldElement.instantiateFrom(new BigInteger("21888242871839275222246405745257275088548364400416034343698204186575808495617"), concat_256[1]).copy()}).copy();


    // Verify that the two commitments are equal 
    comm.forceEqual(comm_cal);

    // Compute iv xor (0^32 || SN)  
    // this acts as the iv for this TLS record 
    UnsignedInteger[] iv_record = (UnsignedInteger[]) UnsignedInteger.createZeroArray(CircuitGenerator.__getActiveCircuitGenerator(), new int[]{12}, 8);

    UnsignedInteger SN_96 = UnsignedInteger.instantiateFrom(96, SN).copy(96);

    for (int i = 0; i < 12; i++) {
      iv_record[i].assign(nonce[i].xorBitwise(UnsignedInteger.instantiateFrom(8, SN_96.shiftRight((8 * (11 - i))))), 8);
    }

    // Use the input keys to decrypt at the specified block 
    dns_query = ChaCha.chachaEncrypt(key, nonce, dns_ct, UnsignedInteger.instantiateFrom(32, 42).copy(32));



    // ******************** Membership Testing *************************** 

    // This function returns the dns labels reversed. 
    // If the query was "7example3com" 
    // the output will be "moc.elpmaxe." 
    UnsignedInteger[][] extraction_values = LabelExtraction.extractDoTReverse(dns_query);

    UnsignedInteger[] dns_labels_rev = extraction_values[0];
    UnsignedInteger dns_length = extraction_values[1][0].copy(8);

    // Merkle tree non-membership testing 
    UnsignedInteger a = new UnsignedInteger(1, new BigInteger("0"));
    a.assign(non_membership.check_wildcard_python_path(dns_labels_rev, root.copy(), left_domain_name, right_domain_name, left_index.copy(8), right_index.copy(8), left_path_array, right_path_array, left_dir.copy(64), right_dir.copy(64)), 1);



    output_Fp.assign(comm_cal);
  }

  public void __generateSampleInput(CircuitEvaluator evaluator) {
    __generateRandomInput(evaluator);
  }

}
