library("MSnbase")
library("DAPAR")

exprsFile <- system.file("extdata", "Exp1_R2_pept.txt", package="DAPARdata")

metadataFile <- system.file("extdata", "samples_Exp1_R2.txt", package="DAPARdata")
metadata = read.table(metadataFile, header=TRUE, sep="\t", as.is=TRUE)

Exp1_R2_pept <- createMSnset(file = exprsFile,
                             metadata = metadata,
                             indExpData = 27:32, 
                             colnameForID = 'id', 
                             indexForMetacell = 14:19,
                             logData = TRUE, 
                             replaceZeros = TRUE,
                             pep_prot_data = "peptide",
                             proteinId = "Protein_group_IDs",
                             software = 'maxquant')

Exp1_R2_pept <- Set_X_CC_infos(Exp1_R2_pept)
