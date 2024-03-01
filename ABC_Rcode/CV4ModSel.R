#Script to run cross validation for model selection with 10mod data
setwd("/mnt/research/ABC/HADU/10mod/output");

library(abc)

ref = read.csv("SumStat_10mod.csv", header = TRUE);

#Let's take 100,000 for the neural net and 10,000 for the mnlogistic
mncv0.001 = cv4postpr(index = ref[,1], sumstat = ref[,-1], method = "mnlogistic", tol = 0.001, nval = 100)

nnetcv0.01 = cv4postpr(index = ref[,1], sumstat = ref[,-1], method = "neuralnet", tol = 0.01, nval = 100)

save(list = ls(all.names = TRUE), file = "HADU_10mod_CVModSel.Rws");
