library("MSnbase")
library("DAPAR")

exprsFile <- system.file("extdata", "Exp1_R2_pept.txt", package="DAPARdata")

metadataFile <- system.file("extdata", "samples_Exp1_R2.txt", package="DAPARdata")
metadata = read.table(metadataFile, header=TRUE, sep="\t", as.is=TRUE)
indExpData <- c(27:32)
indFData <- c(1:26, 33:36)
versions <- list(Prostar_Version = "2.0",
                 DAPAR_Version = "2.0")

Exp1_R2_pept <- createMSnset(exprsFile, 
                          metadata, 
                          indExpData, 
                          indFData, 
                          keyId = 'Sequence', 
                          indexForOriginOfValue = c(14:19),
                          logData=TRUE, 
                          replaceZeros=TRUE,
                          typeOfData = "peptide",
                          parentProtId = "Protein_group_IDs",
                          versions)
