#ABCRF
setwd("/mnt/research/ABC/HADU/10mod/output");

ref = read.csv("RefTable_10mod.csv", header = TRUE);

library(abcrf);

myfor = abcrf(modindex = as.factor(ref[,1]), sumsta = ref[,-c(1,9)], lda = TRUE, ntree = 500, sampsize = 100000, paral = FALSE);

save(list = ls(all.names = TRUE), file = "HADU_10mod_ABCRF.Rws");


