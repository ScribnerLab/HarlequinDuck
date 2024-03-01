//Number of population samples (demes) - not sampled, simulated
7 samples to simulate (NW to E: She, AK, BC, WA, ME, G, I)
//Population effective sizes (number of genes -- 2Ne)
WNE
WNE
WNE
WNE
ENE
ENE
ENE
//Sample sizes (She, AK, BC, WA, ME, G, I)
52
212
96
92
320
102
44
//Growth rates: negative growth = pop expansion forward in time
GROWRATEW
GROWRATEW
GROWRATEW
GROWRATEW
GROWRATEE
GROWRATEE
GROWRATEE
//Number of migration matrices
6
//migration matrix (backwards in time -- only nearest neighbors)
0.0 MIG 0.0 0.0 0.0 0.0 0.0
MIG 0.0 MIG 0.0 0.0 0.0 0.0
0.0 MIG 0.0 MIG 0.0 0.0 0.0
0.0 0.0 MIG 0.0 MIG 0.0 0.0
0.0 0.0 0.0 MIG 0.0 MIG 0.0
0.0 0.0 0.0 0.0 MIG 0.0 MIG
0.0 0.0 0.0 0.0 0.0 MIG 0.0
//migration matrix (backwards in time -- only nearest neighbors)
0.0 MIG 0.0 0.0 0.0 0.0 0.0
MIG 0.0 MIG 0.0 0.0 0.0 0.0
0.0 MIG 0.0 MIG 0.0 0.0 0.0
0.0 0.0 MIG 0.0 MIG 0.0 0.0
0.0 0.0 0.0 MIG 0.0 MIG 0.0
0.0 0.0 0.0 0.0 MIG 0.0 0.0
0.0 0.0 0.0 0.0 0.0 0.0 0.0
//migration matrix (backwards in time -- only nearest neighbors)
0.0 MIG 0.0 0.0 0.0 0.0 0.0
MIG 0.0 MIG 0.0 0.0 0.0 0.0
0.0 MIG 0.0 MIG 0.0 0.0 0.0
0.0 0.0 MIG 0.0 MIG 0.0 0.0
0.0 0.0 0.0 MIG 0.0 0.0 0.0
0.0 0.0 0.0 0.0 0.0 0.0 0.0
0.0 0.0 0.0 0.0 0.0 0.0 0.0
//migration matrix (backwards in time -- only nearest neighbors)
0.0 MIG 0.0 0.0 0.0 0.0 0.0
MIG 0.0 MIG 0.0 0.0 0.0 0.0
0.0 MIG 0.0 MIG 0.0 0.0 0.0
0.0 0.0 MIG 0.0 0.0 0.0 0.0
0.0 0.0 0.0 0.0 0.0 0.0 0.0
0.0 0.0 0.0 0.0 0.0 0.0 0.0
0.0 0.0 0.0 0.0 0.0 0.0 0.0
//migration matrix (backwards in time -- only nearest neighbors)
0.0 0.0 0.0 0.0 0.0 0.0 0.0
0.0 0.0 MIG 0.0 0.0 0.0 0.0
0.0 MIG 0.0 MIG 0.0 0.0 0.0
0.0 0.0 MIG 0.0 0.0 0.0 0.0
0.0 0.0 0.0 0.0 0.0 0.0 0.0
0.0 0.0 0.0 0.0 0.0 0.0 0.0
0.0 0.0 0.0 0.0 0.0 0.0 0.0
//migration matrix (backwards in time -- only nearest neighbors)
0.0 0.0 0.0 0.0 0.0 0.0 0.0
0.0 0.0 0.0 0.0 0.0 0.0 0.0
0.0 0.0 0.0 MIG 0.0 0.0 0.0
0.0 0.0 MIG 0.0 0.0 0.0 0.0
0.0 0.0 0.0 0.0 0.0 0.0 0.0
0.0 0.0 0.0 0.0 0.0 0.0 0.0
0.0 0.0 0.0 0.0 0.0 0.0 0.0
//historical events: time, source (from), sink (to), migrants, new size, growth rate, migr. matrix
7 historical events
TDIV1 6 5 1 1 keep 1
TDIV2 5 4 1 1 keep 2
TDIV3 4 3 1 1 keep 3
TDIV4 0 1 1 1 keep 4
TDIV5 1 2 1 1 keep 5
TDIV6 2 3 1 1 0 nomig
TDIV7 3 3 0 ANCRAT 0 nomig
//Number of independent loci (chromosomes)
6
//Per chromosome: number of linkage blocks
1
//per block: data type, num loci, rec. rate, mutation rate, optional parameters
MICROSAT 1 0 5e-5 0 0
MICROSAT 1 0 5e-5 0 0
MICROSAT 1 0 5e-5 0 0
MICROSAT 1 0 5e-5 0 0
MICROSAT 1 0 5e-5 0 0
MICROSAT 1 0 5e-5 0 0
