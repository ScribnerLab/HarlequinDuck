//Number of population samples (demes) - not sampled, simulated
8 samples to simulate (NW to E: She, AK, BC, WA, ME, G, I, AR)
//Population effective sizes (number of genes -- 2Ne)
WNE
WNE
WNE
WNE
ENE
ENE
ENE
ARNE
//Sample sizes (She, AK, BC, WA, ME, G, I, AR)
52
212
96
92
320
102
44
0
//Growth rates: negative growth = pop expansion forward in time
GROWRATEW
GROWRATEW
GROWRATEW
GROWRATEW
GROWRATEE
GROWRATEE
GROWRATEE
0
//Number of migration matrices
6
//migration matrix (backwards in time -- only nearest neighbors)
0.0 MIG 0.0 0.0 0.0 0.0 0.0 MIG
MIG 0.0 MIG 0.0 0.0 0.0 0.0 0.0
0.0 MIG 0.0 MIG 0.0 0.0 0.0 0.0
0.0 0.0 MIG 0.0 MIG 0.0 0.0 0.0
0.0 0.0 0.0 MIG 0.0 MIG 0.0 0.0
0.0 0.0 0.0 0.0 MIG 0.0 MIG 0.0
0.0 0.0 0.0 0.0 0.0 MIG 0.0 0.0
MIG 0.0 0.0 0.0 0.0 0.0 0.0 0.0
//migration matrix (backwards in time -- only nearest neighbors)
0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0
0.0 0.0 MIG 0.0 0.0 0.0 0.0 0.0 
0.0 MIG 0.0 MIG 0.0 0.0 0.0 0.0
0.0 0.0 MIG 0.0 MIG 0.0 0.0 0.0
0.0 0.0 0.0 MIG 0.0 MIG 0.0 0.0
0.0 0.0 0.0 0.0 MIG 0.0 MIG 0.0
0.0 0.0 0.0 0.0 0.0 MIG 0.0 0.0
0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0
//migration matrix (backwards in time -- only nearest neighbors)
0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0
0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0
0.0 0.0 0.0 MIG 0.0 0.0 0.0 0.0
0.0 0.0 MIG 0.0 MIG 0.0 0.0 0.0
0.0 0.0 0.0 MIG 0.0 MIG 0.0 0.0
0.0 0.0 0.0 0.0 MIG 0.0 MIG 0.0
0.0 0.0 0.0 0.0 0.0 MIG 0.0 0.0
0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0
//migration matrix (backwards in time -- only nearest neighbors)
0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0
0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0
0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0
0.0 0.0 0.0 0.0 MIG 0.0 0.0 0.0
0.0 0.0 0.0 MIG 0.0 MIG 0.0 0.0
0.0 0.0 0.0 0.0 MIG 0.0 MIG 0.0
0.0 0.0 0.0 0.0 0.0 MIG 0.0 0.0
0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0
//migration matrix (backwards in time -- only nearest neighbors)
0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 
0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0
0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0
0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0
0.0 0.0 0.0 0.0 0.0 MIG 0.0 0.0
0.0 0.0 0.0 0.0 MIG 0.0 MIG 0.0
0.0 0.0 0.0 0.0 0.0 MIG 0.0 0.0
0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0
//migration matrix (backwards in time -- only nearest neighbors)
0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0
0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0
0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0
0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0
0.0 0.0 0.0 0.0 0.0 MIG 0.0 0.0
0.0 0.0 0.0 0.0 MIG 0.0 0.0 0.0
0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0
0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0
//historical events: time, source (from), sink (to), migrants, new size, growth rate, migr. matrix
8 historical events
TDIV1 0 1 1 1 keep 1
TDIV2 1 2 1 1 keep 2
TDIV3 2 3 1 1 keep 3
TDIV4 3 4 1 1 keep 4
TDIV5 6 5 1 1 keep 5
TDIV6 5 4 1 1 0 nomig
TDIV7 4 4 0 ANCRAT 0 nomig
TDIV8 7 4 1 1 0 nomig
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
