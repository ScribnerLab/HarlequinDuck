# HarlequinDuck
Model code and metadata for Harlequin Duck manuscript

#Contents of directory

ABC_Rcode
Contains all R code used for ABC analyses.  Including:
	1. ABCRF.R - script generating the ABC random forest
	2. ABCRF_postpred_Ice+AR.R - script using ABC random forest to predict model for PODS simulated under the Ice+AR model
	3. ABCRF_postpred_ME+AR.R - script using ABC random forest to predict model for PODS simulated under the ME+AR model
	4. CV4Modsel.R - script using the ABC package to conduct cross validations for model selection 
	5. Ice+AR_pe.R - script using the ABC package to estimate parameters of the Ice+AR model, uses local linear regression and neural networks, two tolerances each
	6. ME+AR_pe.R - script using the ABC package to estimate parameters of the ME+AR model, uses local linear regression and neural networks, two tolerances each
	7. ModSel.R - script using the ABC package for model selection,  uses multinomial logistic regression and neural networks, three tolerances each
	8. ModSel_mtDNA.R - script using the ABC package for model selection,  uses multinomial logistic regression and neural networks, three tolerances each (ONLY mtDNA SUMMARY STATS)
	9. ModSel_SSR.R - script using the ABC package for model selection,  uses multinomial logistic regression and neural networks, three tolerances each (ONLY SSR SUMMARY STATS)
	10. RFpred.R - script predicting model for observed data from random forest 
	11. SimplifyStats.R - post-processing script, retains subset of summary statistics calculated for ABC analyses
	12. StitchStats.R - post-processing script, combine simulation outputs into one file before ABC analysis

FSC_DrawParms - folder of R scripts (one per model) used to draw model parameters from prior distributions prior to simulations in fastsimcoal

FSC_MODELS - folder of fastsimcoal model template files (.tpl) used to conduct coalescent simulations.  There are two files for each model in the folder, one for simulations of mitochondrial DNA sequences (mtDNA_) and another for microsatellite simulations (SSR_)
