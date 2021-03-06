# Introduction and Overview

This repository accompanies the paper "[Zero-Knowledge Middleboxes](https://eprint.iacr.org/2021/1022.pdf)" by Paul Grubbs, Arasu Arun, Ye Zhang, Joseph Bonneau, and Michael Walfish. Zero-knowledge middleboxes (ZKMBs) are network middleboxes that enforce network usage policies on encrypted traffic in a privacy-preserving way. Clients send the middlebox zero-knowledge proofs that their traffic is policy-compliant; these proofs reveal nothing about the client's communication except that it complies with the policy.


This repository contains code for the three ZKMB case studies described in the paper, as well as all the channel opening circuits. 
The xJsnark library is used to generated circuits, including modules to perform AES-CTR, SHA256, Merkle tree membership testing, ECDHE and the TLS 1.3 key schedule. It also contains support code (such as Python scripts) for generating test inputs.

# Installation 

1. Clone this repository and enter it: `git clone https://github.com/pag-crypto/zkmbs.git` and `cd zkmbs/`.


2. (Install jsnark:) Run `./install_deps_jsnark` (for Ubuntu) to install jsnark and other dependencies. For other systems, follow the “jsnark installation instructions” here: [https://github.com/akosba/jsnark#prerequisites](https://github.com/akosba/jsnark#prerequisites).


3. (Compile xJsnark:) Enter the `gen/` directory and run `./compile_circuits`. The exact output may vary but it should not produce an explicit error. Ours looked something like this: 

```
Note: Some input files use ...
Note: Recompile with -Xlint:unchecked ...
compilation SUCCESS
```




# Reproducing Results

We recommend using a system with at least 32 GB of RAM and 8 cores. Our largest circuit (ChannelBaseline) uses a lot of heap space and had lead to errors on systems with just 16 GB memory.

We provide two experiment scripts to reproduce the results of Figure 6, 7 from the ZKMBs paper.

### Experiment 1: Gate Counts 

Inside `gen/`, run `./reproduce_total_counts` to obtain gate counts (in counts of 10^4). The script outputs to a file named `column_total.txt`. A sample output is as follows:

```
ChannelBaseline             747.9    # BCO
ChannelShortcut             111.1    # SCO
Channel0RTT                  60.7    # ECO
ChannelAmortized             19.1    # ACO^AES
ChannelAmortized_ChaCha       8.7    # ACO^Cha
Firewall_HS                 150.1    # Firewall
DNS_Amortized_ChaCha         17.6    # DoT
DNS_Amortized_doh_get        48.1    # DoH GET
ODOH_Amortized               48.1    # ODoH
```

This is a reproduction of the "Total" columns of Figure 6, 7 from the paper with the nine circuit output in the same order as the rows of the two figures. 

### Experiment 1: Proving Times, SRS

Inside `gen/`, run `./reproduce_times_srs` to obtain prover times, SRS sizes, and verification times. The script outputs to a file named ` columns_ptime_srs_vtime.txt`. A sample output is as follows:

```
ChannelBaseline           92.7 s  1179 MB   2.6 ms
ChannelShortcut           15.6 s   148 MB   1.6 ms
Channel0RTT                8.4 s    79 MB   1.6 ms
ChannelAmortized           2.9 s    26 MB   1.7 ms
ChannelAmortized_ChaCha    1.4 s    13 MB   1.6 ms
Firewall_HS               21.2 s   206 MB   1.6 ms
DNS_Amortized_ChaCha       3.1 s    29 MB   2.1 ms
DNS_Amortized_doh_get      6.8 s    72 MB   2.6 ms
ODOH_Amortized             7.9 s    76 MB   2.6 ms
```

Proof generation is a randomized algorithm; the results reported in the paper are the median of five runs. We have observed variations of up to 2 s for proving time and 2 ms for verifier time, in either direction. The script above performs just one run per circuit.

### Individual Circuits 

The scripts `./generate_circuit DNS_Amortized_ChaCha` and `./prove_and_verify DNS_Amortized_ChaCha` allow for the generating an individual circuit and creating proofs on it, respectively. Replace "`DNS_Amortized_ChaCha`" with any of the nine circuits above.


# Reading the Code

The code is written with the [xJsnark](https://github.com/akosba/xjsnark) library, which has its own Java-based DSL readable by the MPS IDE and stored as XML files. To make it easier to read the code without having to download the IDE, we extracted the readble code and stored it in the folder `readable_code`. They are only marked as ".java" files for syntax highlighting, but are actually written in the xJsnark DSL. 

There are two types of files:
- "Programs" define the circuit's inputs and the functionality of the circuit described
	* see the "inputs {}" and "witnesses_AssertRange {}" brackets for the circuit's inputs and witnesses
	* see the "public void outsource {}" function for the circuit's algorithm
- "Classes" contain library functions that are called when defining the circuit's functionality

Some files of note are:
- TLSKeySchedule: contains the code to perform the Baseline, Shortcut and 0RTT TLS 1.3 key derivation
- membership_merkle/non_membership: verifies a given Merkle tree non-membership proof with support for wildcards	
- e2eDNS/DNS_Shortcut_dot.java: defines the circuit that performs the full encrypted DNS policy-check
	1. Defines the inputs and witnesses for the TLS 1.3 and Merkle testing sub-circuits 
	2. Calls TLSKeySchedule to derive keys 
	3. Verifies the Merkle non-membership proof
- e2eDNS/LabelExtraction.java: contains the code to extract the unserialized URL from a DNS message sent via DoT, DoH POST or DoH GET

# xJsnark instructions

Original xJsnark repository: https://github.com/akosba/xjsnark 

xJsnark is written using the MPS IDE. The `xjsnark_zkmb` folder contains the 11 ".mps" files that are readable by the IDE. It is possible to generate the circuit without MPS using just the source Java files (see "Generating Circuits" below). These source files are in the `gen/src/xjsnark/` folder.

## Installation Instructions (MPS)

The MPS IDE is recommended for running the code. 

__New MPS installation:__ Install MPS from the "[Installation](https://github.com/akosba/xjsnark#installation)" section of the xJsnark repository. Complete the rest of the instructions and Rebuild the language. When you open the project as instructed, the tutorial model files will be present at `<path_to_your_xjsnark>/xjsnark/languages/xjsnark/sandbox/models/xjsnark/`. Now, replace the contents of that folder with the contents of `xjsnark_zkmb/` folder from this repository. Thus, the `<path_to_your_xjsnark>/xjsnark/languages/xjsnark/sandbox/models/xjsnark/` should now contain these eleven .mps files. MPS will automatically read these files when you open the project as usual.

__With an existing MPS installation:__ Copy all the ".mps" files from the `/xjsnark_zkmb` directory of this repository into your `<path_to_your_xjsnark>/xjsnark/languages/xjsnark/sandbox/models/xjsnark/` directory.

## Generating Circuits in MPS

The code can now be read. To test the code and run experiments, the modules need to be compiled. In MPS, compile all modules by right-clicking `xjsnark.sandbox` and clicking Make. An individual module can be compiled by right-clicking on the module and clicking "Make <module>".  

When running a module, make sure to go to Run -> Edit Configurations and set the "working directory" to whichever file your test input files are in. All programs in this package that require a file to be read have a file name variable at the top to set.

The programs generate .arith and .in files are in the working directory, too. A proof can be generated from these using libsnark (see "Generating Circuits with Java" below).

### Optimizer

To optimize the circuit generated by a program, change the line `Config.multivariateExpressionMinimizer = true` in the main() file at the bottom of the program. The optimizer will use a lot more memory (we were able to run it on an EC2 instance with 32 GB RAM).

## Generating Circuits with Java

The circuits can be generated without using MPS and only using the source Java files (which are generated by xJsnark). This will the method to follow when using a remote server. 

Follow the instructions on "Generating circuits on a different platform" in the xJsnark repository to create the `gen/` directory. The generated Java files to copy are the ones from the folder `sandbox/source\_gen/xjsnark`. Copy all folders from there into the `gen/src/xjsnark/` folder and then run the java commands. We have already created a such a `gen/` directory using the current source files, so the above steps only need to be done when updating the code.

As written in the xJsnark repo's instructions, run `javac -d bin  -cp xjsnark_backend.jar $(find ./* | grep ".java$")` in `gen/` to compile the Java source files. Run the next `java ...` command in the same directory. That is also where the .arith and .in files are will be generated.

There are three test files already present in the `\gen` directory: test.txt, test_doh.txt and test_wildcard.txt

To run the whole DNS experiment with the Shortcut channel opening, run the command `java -cp bin:xjsnark_backend.jar xjsnark.e2eDNS.DNS_Shortcut_dot` in `gen/`.

## Running jsnark on generated files

To generate the proof using the .arith and .in files, we use https://github.com/akosba/jsnark. Clone the jsnark repository into a `jsnark/` directory next to the `gen/` directory. Follow the Prerequisites and "jsnark installation instructions" from the jsnark repository.

Once the .arith and .in files are generated (via MPS or Java), the libsnark command is as follows: in the `gen/` directory, run `../jsnark/libsnark/build/libsnark/jsnark_interface/run_ppzksnark gg <.arith file> <.in file>`.

The general command is `<path to run_ppzksnark> gg <path to arith file> <path to in file>`.

The gg is for Groth16. Without it, the default is GGPR. 

## The Modules and Experiments

There are 11 modules that can be read in the MPS IDE. The following modules implement different functionalities that are used in the full programs: aes_gcm, ecdhe, field_table, membership_merkle, poseidon, tls13_key_schedules, util_and_sha.

The following contain the full end-to-end programs:
* e2eDNS
* e2eFirewall
* e2eODOH

The files that contains a `Program <name> { ... }` are the ones that generate circuits. The rest with just `Class <name> { ... }` contains helper functions that are used to generate the circuits.

The e2eDNS module contains the code for zero-knowledge DNS blocklist filtering. It contains three program:
* DNS_Shortcut_dot
* DNS_Shortcut_doh_get
* DNS_Amortized_dot

The first two use the "Shortcut" channel opening and the third uses the "Amortized" channel opening. Each of them take a TLS transcript of an encrypted DNS query, the client's secret inputs, and a Merkle non-membership proof. There are three test files given are: 
* test.txt
* test_doh.txt
* test_wildcard.txt

The first two contain example TLS 1.3 transcripts for DoT and DoH GET connections, respectively. Both are to to "amazon.com". The third contains the Merkle non-membership proof for "amazon.com" in the blocklist of 2 million entries. The circuits can be generated using MPS or Java, and the proofs can be generated using Jsnark (instructions above for all the steps).

### Generating TLS 1.3 Test Cases

The `tls_testing/` directory contains our code to generate more test cases using our modified tlslite-ng (https://github.com/tlsfuzzer/tlslite-ng). The python file `generate_test.py ` creates more testing data. It starts a TLS session with Cloudflare or Google and outputs the input and witnesses required to open the TLS channel using the circuit. For example, run `python3 generate.py <query url>` to create testing data. The outputs of that file are explained in the comments at the code.

Generate DoH queries using `python3 generate.py <query url> -doh <GET/POST>`





