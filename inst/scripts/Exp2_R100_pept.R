library("MSnbase")
library("DAPAR")

exprsFile <- system.file("extdata", "Exp2_R100_pept.txt", package="DAPARdata")

metadataFile <- system.file("extdata", "samples_Exp2_R100.txt", package="DAPARdata")
metadata <- read.table(metadataFile, header=TRUE, sep="\t", as.is=TRUE)

Exp2_R100_pept <- createMSnset(file = exprsFile, 
                               metadata = metadata, 
                               indExpData = 1:6,
                               colnameForID = 'id', 
                               indexForMetacell = 49:54,
                               logData = TRUE, 
                               replaceZeros = TRUE,
                               pep_prot_data = "peptide",
                               proteinId = "Protein_group_IDs",
                               software = 'maxquant')

Exp2_R100_pept <- Set_X_CC_infos(Exp2_R100_pept)
