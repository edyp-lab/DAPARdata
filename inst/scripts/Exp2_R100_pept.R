library("MSnbase")
library("DAPAR")

exprsFile <- system.file("extdata", "Exp2_R100_pept.txt", package="DAPARdata")

metadataFile <- system.file("extdata", "samples_Exp2_R100.txt", package="DAPARdata")
metadata <- read.table(metadataFile, header=TRUE, sep="\t", as.is=TRUE)
indExpData <- 1:6
indiceID <- 64


Exp2_R100_pept <- createMSnset(exprsFile, 
                         metadata, 
                         indExpData, 
                         indiceID, 
                         indexForMetacell = 49:54,
                         logData = TRUE, 
                         replaceZeros = TRUE,
                         pep_prot_data = "peptide",
                         proteinId = "Protein_group_IDs",
                         software = 'maxquant')
