package xjsnark.channel_openings;

/*Generated by MPS */

import backend.structure.CircuitGenerator;
import backend.config.Config;
import backend.eval.SampleRun;
import java.io.BufferedReader;
import java.io.FileReader;
import java.math.BigInteger;
import backend.auxTypes.UnsignedInteger;
import backend.auxTypes.FieldElement;
import util.Util;
import xjsnark.tls13_key_schedules.TLSKeySchedule;
import backend.eval.CircuitEvaluator;

public class ChannelBaseline extends CircuitGenerator {



  public static void main(String[] args) {
    Config.multivariateExpressionMinimization = true;
    Config.writeCircuits = true;
    Config.outputFilesPath = "./circuits";
    new ChannelBaseline();
  }

  public ChannelBaseline() {
    super("ChannelBaseline");
    __generateCircuit();
    this.__evaluateSampleRun(new SampleRun("Sample_Run1", true) {
      public void pre() {

        try {
          BufferedReader br = new BufferedReader(new FileReader(test_file_name));

          String psk_line = br.readLine();
          String sk_line = br.readLine();
          String Ax_line = br.readLine();
          String Ay_line = br.readLine();
          String Bx_line = br.readLine();
          String By_line = br.readLine();
          String HS_line = br.readLine();

          String H2_line = br.readLine();
          String H7_line = br.readLine();
          String H3_line = br.readLine();

          String SF_line = br.readLine();

          String ch_sh_line = br.readLine();
          String ext_line = br.readLine();

          String dns_ct_line = br.readLine();

          String H_state_tr7_line = br.readLine();


          for (int i = 0; i < psk_line.length() / 2; i = i + 1) {
            PSK[i].mapValue(new BigInteger(psk_line.substring(2 * i, 2 * i + 2), 16), CircuitGenerator.__getActiveCircuitGenerator().__getCircuitEvaluator());
          }

          sk.mapValue(new BigInteger(sk_line, 16), CircuitGenerator.__getActiveCircuitGenerator().__getCircuitEvaluator());

          Ax.mapValue(new BigInteger(Ax_line, 16), CircuitGenerator.__getActiveCircuitGenerator().__getCircuitEvaluator());
          Ay.mapValue(new BigInteger(Ay_line, 16), CircuitGenerator.__getActiveCircuitGenerator().__getCircuitEvaluator());

          Bx.mapValue(new BigInteger(Bx_line, 16), CircuitGenerator.__getActiveCircuitGenerator().__getCircuitEvaluator());
          By.mapValue(new BigInteger(By_line, 16), CircuitGenerator.__getActiveCircuitGenerator().__getCircuitEvaluator());


          for (int i = 0; i < H2_line.length() / 2; i = i + 1) {
            H2[i].mapValue(new BigInteger(H2_line.substring(2 * i, 2 * i + 2), 16), CircuitGenerator.__getActiveCircuitGenerator().__getCircuitEvaluator());
          }

          for (int i = 0; i < ch_sh_line.length() / 2; i = i + 1) {
            CH_SH[i].mapValue(new BigInteger(ch_sh_line.substring(2 * i, 2 * i + 2), 16), CircuitGenerator.__getActiveCircuitGenerator().__getCircuitEvaluator());
          }

          CH_SH_len.mapValue(BigInteger.valueOf(ch_sh_line.length() / 2), CircuitGenerator.__getActiveCircuitGenerator().__getCircuitEvaluator());

          for (int i = ch_sh_line.length() / 2; i < MAX_CH_SH_LENGTH; i++) {
            CH_SH[i].mapValue(BigInteger.valueOf(0), CircuitGenerator.__getActiveCircuitGenerator().__getCircuitEvaluator());
          }


          for (int i = 0; i < ext_line.length() / 2; i = i + 1) {
            ServExt_ct[i].mapValue(new BigInteger(ext_line.substring(2 * i, 2 * i + 2), 16), CircuitGenerator.__getActiveCircuitGenerator().__getCircuitEvaluator());
          }
          for (int i = ext_line.length() / 2; i < MAX_ServExt_LENGTH; i = i + 1) {
            ServExt_ct[i].mapValue(new BigInteger("0"), CircuitGenerator.__getActiveCircuitGenerator().__getCircuitEvaluator());
          }

          ServExt_ct_len.mapValue(BigInteger.valueOf((ext_line.length() / 2)), CircuitGenerator.__getActiveCircuitGenerator().__getCircuitEvaluator());

          String ct_lb = get_last_block(ext_line);
          for (int i = 0; i < ct_lb.length() / 2; i = i + 1) {
            ServExt_ct_tail[i].mapValue(new BigInteger(ct_lb.substring(2 * i, 2 * i + 2), 16), CircuitGenerator.__getActiveCircuitGenerator().__getCircuitEvaluator());
          }

          for (int i = 0; i < dns_ct_line.length() / 2; i = i + 1) {
            appl_ct[i].mapValue(new BigInteger(dns_ct_line.substring(2 * i, 2 * i + 2), 16), CircuitGenerator.__getActiveCircuitGenerator().__getCircuitEvaluator());
          }
          for (int i = dns_ct_line.length() / 2; i < 255; i = i + 1) {
            appl_ct[i].mapValue(new BigInteger("0"), CircuitGenerator.__getActiveCircuitGenerator().__getCircuitEvaluator());
          }


        } catch (Exception ex) {
          System.out.println("FILE NOT FIND OR LINE NOT READ");
        }


      }
      public void post() {
        System.out.println("Circuit Output: ");

        for (int j = 0; j < values.length; j++) {
          for (int i = 0; i < values[j].length; i++) {
            System.out.print(String.format("%1$02x", values[j][i].getValueFromEvaluator(CircuitGenerator.__getActiveCircuitGenerator().__getCircuitEvaluator())));
          }
          System.out.print("\n");
        }

      }

    });

  }



  public void __init() {
    test_file_name = "test.txt";
    PSK = (UnsignedInteger[]) UnsignedInteger.createZeroArray(CircuitGenerator.__getActiveCircuitGenerator(), new int[]{32}, 8);
    sk = new UnsignedInteger(256, new BigInteger("0"));
    Ax = new FieldElement(new BigInteger("115792089210356248762697446949407573530086143415290314195533631308867097853951"), new BigInteger("0"));
    Ay = new FieldElement(new BigInteger("115792089210356248762697446949407573530086143415290314195533631308867097853951"), new BigInteger("0"));
    Bx = new FieldElement(new BigInteger("115792089210356248762697446949407573530086143415290314195533631308867097853951"), new BigInteger("0"));
    By = new FieldElement(new BigInteger("115792089210356248762697446949407573530086143415290314195533631308867097853951"), new BigInteger("0"));
    H2 = (UnsignedInteger[]) UnsignedInteger.createZeroArray(CircuitGenerator.__getActiveCircuitGenerator(), new int[]{32}, 8);
    CH_SH = (UnsignedInteger[]) UnsignedInteger.createZeroArray(CircuitGenerator.__getActiveCircuitGenerator(), new int[]{MAX_CH_SH_LENGTH}, 8);
    CH_SH_len = new UnsignedInteger(16, new BigInteger("0"));
    ServExt_ct = (UnsignedInteger[]) UnsignedInteger.createZeroArray(CircuitGenerator.__getActiveCircuitGenerator(), new int[]{MAX_ServExt_LENGTH}, 8);
    ServExt_ct_len = new UnsignedInteger(16, new BigInteger("0"));
    ServExt_ct_tail = (UnsignedInteger[]) UnsignedInteger.createZeroArray(CircuitGenerator.__getActiveCircuitGenerator(), new int[]{64}, 8);
    appl_ct = (UnsignedInteger[]) UnsignedInteger.createZeroArray(CircuitGenerator.__getActiveCircuitGenerator(), new int[]{255}, 8);
  }

  /*package*/ String test_file_name;
  public UnsignedInteger[][] values;
  public UnsignedInteger[] PSK;
  public UnsignedInteger sk;
  public FieldElement Ax;
  public FieldElement Ay;
  public FieldElement Bx;
  public FieldElement By;
  public UnsignedInteger[] H2;
  public UnsignedInteger[] CH_SH;
  public UnsignedInteger CH_SH_len;
  public UnsignedInteger[] ServExt_ct;
  public UnsignedInteger ServExt_ct_len;
  public UnsignedInteger[] ServExt_ct_tail;
  public UnsignedInteger[] appl_ct;

  public static final int MAX_CH_SH_LENGTH = 448;
  public static final int MAX_ServExt_LENGTH = 3000;
  @Override
  public void __defineInputs() {
    super.__defineInputs();
    CH_SH_len = UnsignedInteger.createInput(this, 16);
    ServExt_ct_len = UnsignedInteger.createInput(this, 16);
    Ax = FieldElement.createInput(this, new BigInteger("115792089210356248762697446949407573530086143415290314195533631308867097853951"));
    Ay = FieldElement.createInput(this, new BigInteger("115792089210356248762697446949407573530086143415290314195533631308867097853951"));
    Bx = FieldElement.createInput(this, new BigInteger("115792089210356248762697446949407573530086143415290314195533631308867097853951"));
    By = FieldElement.createInput(this, new BigInteger("115792089210356248762697446949407573530086143415290314195533631308867097853951"));



    H2 = (UnsignedInteger[]) UnsignedInteger.createInputArray(CircuitGenerator.__getActiveCircuitGenerator(), Util.getArrayDimensions(H2), 8);
    CH_SH = (UnsignedInteger[]) UnsignedInteger.createInputArray(CircuitGenerator.__getActiveCircuitGenerator(), Util.getArrayDimensions(CH_SH), 8);
    ServExt_ct = (UnsignedInteger[]) UnsignedInteger.createInputArray(CircuitGenerator.__getActiveCircuitGenerator(), Util.getArrayDimensions(ServExt_ct), 8);
    ServExt_ct_tail = (UnsignedInteger[]) UnsignedInteger.createInputArray(CircuitGenerator.__getActiveCircuitGenerator(), Util.getArrayDimensions(ServExt_ct_tail), 8);
    appl_ct = (UnsignedInteger[]) UnsignedInteger.createInputArray(CircuitGenerator.__getActiveCircuitGenerator(), Util.getArrayDimensions(appl_ct), 8);












  }
  @Override
  public void __defineOutputs() {
    super.__defineOutputs();









  }
  @Override
  public void __defineVerifiedWitnesses() {
    super.__defineVerifiedWitnesses();

    sk = UnsignedInteger.createVerifiedWitness(this, 256);



    PSK = (UnsignedInteger[]) UnsignedInteger.createVerifiedWitnessArray(CircuitGenerator.__getActiveCircuitGenerator(), Util.getArrayDimensions(PSK), 8);















  }
  @Override
  public void __defineWitnesses() {
    super.__defineWitnesses();

















  }
  public void outsource() {

    // This function's goal: 
    //   (1) Verify that the client's DHE key share is correct 
    //   (2) Decrypt the ServerExtensions and compute hash of transcript TR3 = CH || SH || ServExt 
    //   (3) Derive the client appl traffic keys and decrypt application data  
    values = TLSKeySchedule.get1RTT(sk.copy(256), Ax.copy(), Ay.copy(), Bx.copy(), By.copy(), H2, CH_SH, CH_SH_len.copy(16), ServExt_ct, ServExt_ct_len.copy(16), ServExt_ct_tail, appl_ct);



  }
  public String get_last_block(String line) {
    String output = "";

    int len = line.length() / 2;

    int num_whole_blocks = len / 64;
    int lbl = len % 64;

    for (int i = 0; i < lbl; i++) {
      int j = num_whole_blocks * 64 + i;
      output = output + line.substring(2 * j, 2 * j + 2);
    }

    for (int i = lbl; i < 64; i++) {
      output = output + "00";
    }

    return output;
  }

  public void __generateSampleInput(CircuitEvaluator evaluator) {
    __generateRandomInput(evaluator);
  }

}
