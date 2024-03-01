#Script to use the forest to predict model of observed
setwd("/mnt/research/ABC/HADU/10mod/output");

load("HADU_10mod_ABCRF.Rws");

library(abcrf);

PODS = read.csv("POD_ME+AR_allstats.csv", header = TRUE);

mypred = predict(object=myfor, obs = PODS[,-8], ntree = 1000, sampsize = 100000, paral = FALSE);

save(list = ls(all.names = TRUE), file = "HADU_ME+AR_PODpred.Rws");
