library("MSnbase")
library("DAPAR")

exprsFile <- system.file("extdata", "Exp1_R2_pept.txt", package="DAPARdata")

metadataFile <- system.file("extdata", "samples_Exp1_R2.txt", package="DAPARdata")
metadata = read.table(metadataFile, header=TRUE, sep="\t", as.is=TRUE)
indExpData <- c(20:25)
indFData <- c(1:19, 26:36)
indiceID <- 29
versions <- list(Prostar_Version = "1.12.9",
                 DAPAR_Version = "1.12.9")

Exp1_R2_pept <- createMSnset(exprsFile, 
                          metadata, 
                          indExpData, 
                          indFData, 
                          indiceID, 
                          indexForOriginOfValue = c(13:18),
                          logData=FALSE, 
                          replaceZeros=FALSE,
                          pep_prot_data = "peptide",
                          versions)
