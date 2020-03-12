library("MSnbase")
library("DAPAR")

exprsFile <- system.file("extdata", "Exp2_R2_pept.txt", package="DAPARdata")

metadataFile <- system.file("extdata", "samples_Exp2_R2.txt", package="DAPARdata")
metadata <- read.table(metadataFile, header=TRUE, sep="\t", as.is=TRUE)
indExpData <- c(1:6)
indFData <- c(7:71)
keyId <- 64
versions <- list(Prostar_Version = "2.0",DAPAR_Version = "2.0")
Exp2_R2_pept <- createMSnset(exprsFile, 
                         metadata, 
                         indExpData, 
                         indFData, 
                         keyId = keyId, 
                         indexForOriginOfValue = c(43:48),
                         logData=TRUE, 
                         replaceZeros=TRUE,
                         typeOfData = "peptide",
                         parentProtId = "Protein_group_IDs",
                         versions)