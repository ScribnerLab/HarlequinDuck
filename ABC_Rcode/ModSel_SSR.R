#Script to run model selection analyses with 10mod data
setwd("/mnt/research/ABC/HADU/10mod/output");

obs = read.csv("ObsStats.csv", header = TRUE);
ref = read.csv("SumStat_10mod.csv", header = TRUE);
ref = ref[,c(1, 21:32)]
obs = obs[,c(20:31)]

library(abc);

#MNLOGISTIC
#1% = 100,000 datasets accepted
mnlog0.01 = postpr(index = ref[,1], sumstat = ref[,-1], target = obs[1,], method = "mnlogistic", tol = 0.01);
#0.1% = 10,000 datasets accepted
mnlog0.001 = postpr(index = ref[,1], sumstat = ref[,-1], target = obs[1,], method = "mnlogistic", tol = 0.001);
#0.01% = 1000 datasets accepted
mnlog0.0001 = postpr(index = ref[,1], sumstat = ref[,-1], target = obs[1,], method = "mnlogistic", tol = 0.0001);

#NEURAL NET
#5% neural net 500,000 datasets
nnet0.05 = postpr(index = ref[,1], sumstat = ref[,-1], target = obs[1,], method = "neuralnet", tol = 0.05);
#1% neural net 100,000 datasets
nnet0.01= postpr(index = ref[,1], sumstat = ref[,-1], target = obs[1,], method = "neuralnet", tol = 0.01);
#0.5% neural net 50,000 datasets
nnet0.005= postpr(index = ref[,1], sumstat = ref[,-1], target = obs[1,], method = "neuralnet", tol = 0.005);

save(list = ls(all.names = TRUE), file = "HADU_10mod_ABCmodsel_SSR.Rws");

