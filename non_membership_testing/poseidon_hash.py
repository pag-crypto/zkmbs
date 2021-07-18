from poseidon_constants import POSEIDON_C
from poseidon_constants import POSEIDON_M
import time

p = 21888242871839275222246405745257275088548364400416034343698204186575808495617

def exp5(in1):
	in2 = in1*in1 % p
	in4 = in2*in2 % p 
	in5 = in4*in1 % p

	return in5

def ark(state, C, r):
	for i in range(0, len(state)):
		state[i] = state[i] + C[i+r] % p
	
	return state

def mix(state, M):
	lc = 0
	output = []

	for i in range(0, len(state)):
		lc = 0
		for j in range(0, len(state)):
			lc = lc + M[i][j]*state[j] % p
		output.append(lc)

	return output

def sbox(nRoundsF, nRoundsP, state, i):
	if ((i < nRoundsF/2) or (i >= nRoundsF/2 + nRoundsP)):
		for j in range(0, len(state)):
			state[j] = exp5(state[j])
	else:
		state[0] = exp5(state[0])

	return state




def poseidon_hash(input):
    
    nInputs = len(input)
    N_ROUNDS_P = [56, 57, 56, 60, 60, 63, 64, 63]
    t = nInputs + 1
    nRoundsF = 8
    nRoundsP = N_ROUNDS_P[t - 2]

    C = POSEIDON_C(t)
    M = POSEIDON_M(t)

    state = [0]
    for item in input:
    	state.append(item)

    for i in range(0, nRoundsF + nRoundsP):
    	# print(i," ", state[0])
    	# print(i," in ",hex(state[0]),state[0])
    	state = ark(state, C, i*t)
    	# print(i," ark ",hex(state[0]), state[0])
    	state = sbox(nRoundsF, nRoundsP, state, i)
    	# print(i," sbox ",state[0])
    	state = mix(state, M)
    	# print(i," mix ",state[0])

    output = state[0] % p
    return output

# a = poseidon_hash([3993726729728456562288376524736781253942224580193245007545935011759967092819, 20532736310324258262994538691311925383259813537971010774634242964482628474019]) 
# print(a)
# 0x295f05722342fa8f3598a3fef7b69add734ea2ab1f64c9a6974d955b113a696f
