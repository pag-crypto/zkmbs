package xjsnark.channel_openings;

/*Generated by MPS */

import backend.structure.CircuitGenerator;
import backend.config.Config;
import backend.eval.SampleRun;
import java.math.BigInteger;
import backend.auxTypes.UnsignedInteger;
import util.Util;
import xjsnark.tls13_key_schedules.TLSKeySchedule;
import backend.eval.CircuitEvaluator;

public class Channel0RTT extends CircuitGenerator {



  public static void main(String[] args) {
    Config.multivariateExpressionMinimization = true;
    Config.writeCircuits = true;
    Config.outputFilesPath = "./circuits";

    new Channel0RTT();
  }

  public Channel0RTT() {
    super("Channel0RTT");
    __generateCircuit();
    this.__evaluateSampleRun(new SampleRun("Sample_Run1", true) {
      public void pre() {

        // We will use the example 0RTT connection provided in RFC 8448 for testing 

        int[] int_PSK = {78, 205, 14, 182, 236, 59, 77, 135, 245, 214, 2, 143, 146, 44, 164, 197, 133, 26, 39, 127, 212, 19, 17, 201, 230, 45, 44, 148, 146, 225, 196, 243};
        for (int i = 0; i < PSK.length; i++) {
          PSK[i].mapValue(BigInteger.valueOf(int_PSK[i]), CircuitGenerator.__getActiveCircuitGenerator().__getCircuitEvaluator());
        }


        int[] int_H_1 = {8, 173, 15, 160, 93, 124, 114, 51, 177, 119, 91, 162, 255, 159, 76, 91, 139, 89, 39, 107, 127, 34, 127, 19, 169, 118, 36, 95, 93, 150, 9, 19};
        for (int i = 0; i < H1.length; i++) {
          H1[i].mapValue(BigInteger.valueOf(int_H_1[i]), CircuitGenerator.__getActiveCircuitGenerator().__getCircuitEvaluator());
        }


        int[] int_H_5 = {99, 34, 75, 46, 69, 115, 242, 211, 69, 76, 168, 75, 157, 0, 154, 4, 246, 190, 158, 5, 113, 26, 131, 150, 71, 58, 239, 160, 30, 146, 74, 20};
        for (int i = 0; i < H5.length; i++) {
          H5[i].mapValue(BigInteger.valueOf(int_H_5[i]), CircuitGenerator.__getActiveCircuitGenerator().__getCircuitEvaluator());
        }


        int[] int_REAL_BINDER = {58, 221, 79, 178, 216, 253, 248, 34, 160, 202, 60, 247, 103, 142, 245, 232, 141, 174, 153, 1, 65, 197, 146, 77, 87, 187, 111, 163, 27, 158, 95, 157};
        for (int i = 0; i < transcript_binder.length; i++) {
          transcript_binder[i].mapValue(BigInteger.valueOf(int_REAL_BINDER[i]), CircuitGenerator.__getActiveCircuitGenerator().__getCircuitEvaluator());
        }



        String dns_ct_line = "0000000000000000000000000000000000000000000000000000000000000000";

        for (int i = 0; i < dns_ct_line.length() / 2; i = i + 1) {
          early_data_ct[i].mapValue(new BigInteger(dns_ct_line.substring(2 * i, 2 * i + 2), 16), CircuitGenerator.__getActiveCircuitGenerator().__getCircuitEvaluator());
        }
        for (int i = dns_ct_line.length() / 2; i < 255; i = i + 1) {
          early_data_ct[i].mapValue(new BigInteger("0"), CircuitGenerator.__getActiveCircuitGenerator().__getCircuitEvaluator());
        }


      }
      public void post() {
        System.out.println("Circuit Output: ");
        // early_data_pt will be padded to 255 bytes 
        // just output the prefix of length equal to "int_ciphertext" given as input 
        for (int i = 0; i < 32; i++) {
          System.out.print(String.format("%1$02x", early_data_pt[i].getValueFromEvaluator(CircuitGenerator.__getActiveCircuitGenerator().__getCircuitEvaluator())));
        }
      }

    });

  }



  public void __init() {
    early_data_ct = (UnsignedInteger[]) UnsignedInteger.createZeroArray(CircuitGenerator.__getActiveCircuitGenerator(), new int[]{255}, 8);
    H5 = (UnsignedInteger[]) UnsignedInteger.createZeroArray(CircuitGenerator.__getActiveCircuitGenerator(), new int[]{32}, 8);
    transcript_binder = (UnsignedInteger[]) UnsignedInteger.createZeroArray(CircuitGenerator.__getActiveCircuitGenerator(), new int[]{32}, 8);
    H1 = (UnsignedInteger[]) UnsignedInteger.createZeroArray(CircuitGenerator.__getActiveCircuitGenerator(), new int[]{32}, 8);
    PSK = (UnsignedInteger[]) UnsignedInteger.createZeroArray(CircuitGenerator.__getActiveCircuitGenerator(), new int[]{32}, 8);
  }

  public UnsignedInteger[] early_data_ct;
  public UnsignedInteger[] H5;
  public UnsignedInteger[] transcript_binder;
  public UnsignedInteger[] H1;
  public UnsignedInteger[] PSK;
  public UnsignedInteger[] early_data_pt;

  @Override
  public void __defineInputs() {
    super.__defineInputs();



    H5 = (UnsignedInteger[]) UnsignedInteger.createInputArray(CircuitGenerator.__getActiveCircuitGenerator(), Util.getArrayDimensions(H5), 8);
    H1 = (UnsignedInteger[]) UnsignedInteger.createInputArray(CircuitGenerator.__getActiveCircuitGenerator(), Util.getArrayDimensions(H1), 8);
    transcript_binder = (UnsignedInteger[]) UnsignedInteger.createInputArray(CircuitGenerator.__getActiveCircuitGenerator(), Util.getArrayDimensions(transcript_binder), 8);
    early_data_ct = (UnsignedInteger[]) UnsignedInteger.createInputArray(CircuitGenerator.__getActiveCircuitGenerator(), Util.getArrayDimensions(early_data_ct), 8);












  }
  @Override
  public void __defineOutputs() {
    super.__defineOutputs();









  }
  @Override
  public void __defineVerifiedWitnesses() {
    super.__defineVerifiedWitnesses();




    PSK = (UnsignedInteger[]) UnsignedInteger.createVerifiedWitnessArray(CircuitGenerator.__getActiveCircuitGenerator(), Util.getArrayDimensions(PSK), 8);















  }
  @Override
  public void __defineWitnesses() {
    super.__defineWitnesses();

















  }
  public void outsource() {

    // Goals of this function: 
    // (1) Verify that the PSK used is correct by compared the derived and transcript binders 
    // (2) Derive the client application traffic key 
    // (3) Decrypt the early data ciphertext 

    UnsignedInteger[] value = TLSKeySchedule.get0RTT(PSK, H1, H5, transcript_binder, early_data_ct)[0];

    early_data_pt = value;
  }

  public void __generateSampleInput(CircuitEvaluator evaluator) {
    __generateRandomInput(evaluator);
  }

}
