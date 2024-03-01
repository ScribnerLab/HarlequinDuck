#Script to run parameter estimation with 10mod data for ME+AR model

setwd("/mnt/research/ABC/HADU/10mod/PARMS");

parms = read.table("SSR_ME+AR.def", header = TRUE);
parms = parms[,c(1:15)];

setwd("/mnt/research/ABC/HADU/10mod/output");

ref = read.csv("SumStat_10mod.csv", header = TRUE);
ref = ref[ref$modindex == 6,]; #ME+AR

obs = read.csv("ObsStats.csv", header = TRUE);

bounds = matrix(data = NA, nrow = 15, ncol = 2);

for(p in 1:15) {
	bounds[p,1] = min(parms[,p]);
	bounds[p,2] = max(parms[,p]);
}

library(abc)

loc0.01 = abc(target = obs, param = parms, sumstat = ref[,-1], method = "loclinear", tol = 0.01, transf = "logit", logit.bounds = bounds); #1% = 10,000 datasets

loc0.001 = abc(target = obs, param = parms, sumstat = ref[,-1], method = "loclinear", tol = 0.001, transf = "logit", logit.bounds = bounds); #0.1% = 1000 datasets

nnet0.1 = abc(target = obs, param = parms, sumstat = ref[,-1], method = "neuralnet", tol = 0.1, transf = "logit", logit.bounds = bounds); #10% = 100,000 datasets

nnet0.05 = abc(target = obs, param = parms, sumstat = ref[,-1], method = "neuralnet", tol = 0.05, transf = "logit", logit.bounds = bounds); #5% = 50,000 datasets

save(list = ls(all.names = TRUE), file = "HADU_ME+AR_PE.Rws");

