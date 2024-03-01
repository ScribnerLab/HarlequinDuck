#R script to draw parameters for HADU simulations
setwd("~/Google Drive/MSU/HADU/10mod/PARMS");
library(KScorrect);

MODEL = "DEEP";
parmnames = c("WNE", "ENE", "BOTTN", "ANCN", "MIG", paste0(rep("TDIV",6),c(1:6)), "MIGSCAL", "ANCRAT", "GROWRATEE", "GROWRATEW");
nsims = 1000000;

#Down here the parameters are drawn

WNE = round(runif(nsims, 500, 20000));
ENE = round(runif(nsims, 500, 20000));

MIG = rlunif(nsims, 1e-5, 1e-3, base = 10);
MIGSCAL = runif(nsims, 0.01, 0.5);

TDIV5 = round(runif(nsims, 2000, 4400));
TDIV6 = round(runif(nsims, 20000, 30000));

BOTTN = c();
ANCN = c();
TDIV1to4 = matrix(data = NA, nrow = nsims, ncol = 4);

for(x in 1:nsims) {
  BOTTN[x] = round(runif(1, 20, min(WNE[x], ENE[x])));
  ANCN[x] = round(runif(1, max(WNE[x], ENE[x]), 100000));
  TDIV1to4[x,] = round(sort(runif(4, 400, TDIV5[x])));
}

ANCRAT = ANCN/BOTTN;
GROWRATEE = log(BOTTN/ENE)/TDIV5;
GROWRATEW = log(BOTTN/WNE)/TDIV5;

params = data.frame(WNE, ENE, BOTTN, ANCN, MIG, TDIV1to4, TDIV5, TDIV6, MIGSCAL, ANCRAT, GROWRATEE, GROWRATEW);
names(params) = parmnames;

write.table(params, paste0("SSR_", MODEL, ".def"), quote = FALSE, row.names = FALSE, col.names = TRUE);

DNAparams = data.frame(round(WNE*0.25), round(ENE*0.25), round(BOTTN*0.25), round(ANCN*0.25), MIG*MIGSCAL, TDIV1to4, TDIV5, TDIV6, MIGSCAL, ANCRAT, GROWRATEE, GROWRATEW);
names(DNAparams) = parmnames;

write.table(DNAparams, paste0("mtDNA_", MODEL, ".def"), quote = FALSE, row.names = FALSE, col.names = TRUE);
