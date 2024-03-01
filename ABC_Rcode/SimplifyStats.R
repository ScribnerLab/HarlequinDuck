#Pair down stats to a smaller subset
#RefTable_10mod.csv is 11 gb!!

setwd("/mnt/research/ABC/HADU/10mod/output");

reftab = read.csv("RefTable_10mod.csv", header = TRUE);

sumstat = data.frame(
		modindex = reftab$modindex, 	#The model index for postpr, etc.
		mPrS_She = reftab$mprS_1, #Shemya private seg. sites -- private seg sites may be helpful
		mPrS_AK = reftab$mprS_2, #AK private seg. sites
		mPrS_BC = reftab$mprS_3, #BC private seg. sites
		mPrS_WA = reftab$mprS_4, #WA private seg. sites
		mPrS_ME = reftab$mprS_5, #ME private seg. sites
		mPrS_G = reftab$mprS_6, #G private seg. sites
		mPrS_I = reftab$mprS_7, #I private seg. sites
		mPi_She = reftab$mPi_1, #Shemya Pi within 
		mPi_AK = reftab$mPi_2, #AK Pi within
		mPi_BC = reftab$mPi_3, #BC Pi within
		mPi_WA = reftab$mPi_4, #WA Pi within
		mPi_ME = reftab$mPi_5, #ME Pi within
		mPi_G = reftab$mPi_6, #G Pi within
		mPi_I = reftab$mPi_7, #I Pi within
		mPI_WEST = apply(data.frame(reftab$mPI_2_1, reftab$mPI_3_1, reftab$mPI_3_2, reftab$mPI_4_1, reftab$mPI_4_2, reftab$mPI_4_3),1,mean), #mean PI among Western pops
		mPI_EAST = apply(data.frame(reftab$mPI_6_5, reftab$mPI_7_5, reftab$mPI_7_6),1,mean), 	#mean PI among E pops
		mPI_EW = apply(data.frame(reftab$mPI_5_1, reftab$mPI_5_2, reftab$mPI_5_3, reftab$mPI_5_4, reftab$mPI_6_1, reftab$mPI_6_2, reftab$mPI_6_3, reftab$mPI_6_4, reftab$mPI_7_1, reftab$mPI_7_2, reftab$mPI_7_3, reftab$mPI_7_4),1,mean), 	#Mean PI b/w E&W pops
		mPI_SheW = apply(data.frame(reftab$mPI_2_1, reftab$mPI_3_1, reftab$mPI_4_1),1,mean),
		mPI_SheE = apply(data.frame(reftab$mPI_5_1, reftab$mPI_6_1, reftab$mPI_7_1),1,mean),
		#SSR DATA
		sHe_She = reftab$sH_1,	#Shemya expected heterozygosity 
		sHe_AK = reftab$sH_2,	#AK expected heterozygosity
		sHe_BC = reftab$sH_3,	#BC expected heterozygosity
		sHe_WA = reftab$sH_4,	#WA expected heterozygosity
		sHe_ME = reftab$sH_5,	#ME expected heterozygosity
		sHe_G = reftab$sH_6,	#G expected heterozygosity
		sHe_I = reftab$sH_7,	#I expected heterozygosity
		sFST_WEST = apply(data.frame(reftab$sFST_2_1, reftab$sFST_3_1, reftab$sFST_3_2, reftab$sFST_4_1, reftab$sFST_4_2, reftab$sFST_4_3),1,mean), #mean Fst among Western pops
		sFST_EAST = apply(data.frame(reftab$sFST_6_5, reftab$sFST_7_5, reftab$sFST_7_6),1,mean), 	#mean Fst among E pops
		sFST_EW = apply(data.frame(reftab$sFST_5_1, reftab$sFST_5_2, reftab$sFST_5_3, reftab$sFST_5_4, reftab$sFST_6_1, reftab$sFST_6_2, reftab$sFST_6_3, reftab$sFST_6_4, reftab$sFST_7_1, reftab$sFST_7_2, reftab$sFST_7_3, reftab$sFST_7_4),1,mean), 	#Mean Fst b/w E&W pops
		sFST_SheW = apply(data.frame(reftab$sFST_2_1, reftab$sFST_3_1, reftab$sFST_4_1),1,mean),
		sFST_SheE = apply(data.frame(reftab$sFST_5_1, reftab$sFST_6_1, reftab$sFST_7_1),1,mean)
	);

write.csv(sumstat, "SumStat_10mod.csv", quote = FALSE, row.names = FALSE);

