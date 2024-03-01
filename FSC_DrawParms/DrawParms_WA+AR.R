#R script to draw parameters for HADU simulations
setwd("~/Google Drive/MSU/HADU/10mod/PARMS");
library(KScorrect);

MODEL = "WA+AR";
parmnames = c("WNE", "ENE", "ARNE", "BOTTN", "ANCN", "MIG", paste0(rep("TDIV",8),c(1:8)), "MIGSCAL", "ANCRAT", "GROWRATEE", "GROWRATEW");
nsims = 1000000;

#Down here the parameters are drawn

WNE = round(runif(nsims, 500, 20000));
ENE = round(runif(nsims, 500, 20000));
ARNE = round(runif(nsims, 500, 20000));

MIG = rlunif(nsims, 1e-5, 1e-3, base = 10);
MIGSCAL = runif(nsims, 0.01, 0.5);

TDIV8 = round(runif(nsims, 20000, 30000));
TDIV6 = round(runif(nsims, 2000, 4400));

BOTTN = c();
ANCN = c();
TDIV1to2 = matrix(data = NA, nrow = nsims, ncol = 2);
TDIV3to5 = matrix(data = NA, nrow = nsims, ncol = 3);
TDIV7 = c();

for(x in 1:nsims) {
  BOTTN[x] = round(runif(1, 20, min(WNE[x], ENE[x])));
  ANCN[x] = round(runif(1, max(WNE[x], ENE[x]), 100000));
  TDIV3to5[x,] = round(sort(runif(3, 1600, TDIV6[x])));
  TDIV1to2[x,] = round(sort(runif(2, 400, min(TDIV3to5[x,]))));
  TDIV7[x] = round(runif(1, 20000, TDIV8[x]));
}

ANCRAT = ANCN/BOTTN;
GROWRATEE = log(BOTTN/ENE)/TDIV6;
GROWRATEW = log(BOTTN/WNE)/TDIV6;

params = data.frame(WNE, ENE, ARNE, BOTTN, ANCN, MIG, TDIV1to2, TDIV3to5, TDIV6, TDIV7, TDIV8, MIGSCAL, ANCRAT, GROWRATEE, GROWRATEW);
names(params) = parmnames;

write.table(params, paste0("SSR_", MODEL, ".def"), quote = FALSE, row.names = FALSE, col.names = TRUE);

DNAparams = data.frame(round(WNE*0.25), round(ENE*0.25), round(ARNE*0.25), round(BOTTN*0.25), round(ANCN*0.25), MIG*MIGSCAL, TDIV1to2, TDIV3to5, TDIV6, TDIV7, TDIV8, MIGSCAL, ANCRAT, GROWRATEE, GROWRATEW);
names(DNAparams) = parmnames;

write.table(DNAparams, paste0("mtDNA_", MODEL, ".def"), quote = FALSE, row.names = FALSE, col.names = TRUE);
