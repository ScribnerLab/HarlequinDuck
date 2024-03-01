#Script to stitch together summary stats... 
mtDNAmodels = c("mtDNA_DEEP", "mtDNA_DEEP+AR", "mtDNA_IceRefuge", "mtDNA_Ice+AR", "mtDNA_MERefuge", "mtDNA_ME+AR", "mtDNA_SheRefuge", "mtDNA_She+AR", "mtDNA_WARefuge", "mtDNA_WA+AR");
SSRmodels = c("SSR_DEEP", "SSR_DEEP+AR", "SSR_IceRefuge", "SSR_Ice+AR", "SSR_MERefuge", "SSR_ME+AR", "SSR_SheRefuge", "SSR_She+AR", "SSR_WARefuge", "SSR_WA+AR");

for(m in 1:length(mtDNAmodels)) {
	setwd("/mnt/research/ABC/HADU/10mod/output/mtDNA_data");
	mIN = paste0(mtDNAmodels[m], "_", c(1:50), "_out.txt");
	sIN = paste0(SSRmodels[m], "_", c(1:50), "_out.txt");
	for(i in 1:length(mIN)) {
		setwd("/mnt/research/ABC/HADU/10mod/output/mtDNA_data");
		mTMP = read.table(mIN[i], header = TRUE);
		names(mTMP) = paste0("m", names(mTMP));

		setwd("/mnt/research/ABC/HADU/10mod/output/SSR_data");
		sTMP = read.table(sIN[i], header = TRUE);
		names(sTMP) = paste0("s", names(sTMP));

		alltmp = cbind(mTMP, sTMP);
		if(i==1) {
			out=alltmp;
		} else {
			out=rbind(out, alltmp);
		}
		rm(mTMP);
		rm(sTMP);
		rm(alltmp);
		print(noquote(mIN[i]));
	}
	out = cbind(m, out);
	
	if(m == 1) {
		allout=out;
	} else {
		allout=rbind(allout, out);
	}
	rm(out);
}
names(allout)[1] = "modindex";


setwd("/mnt/research/ABC/HADU/10mod/output");
write.csv(allout, "RefTable_10mod.csv", quote=FALSE, row.names = FALSE);
