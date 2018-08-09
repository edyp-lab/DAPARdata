library("MSnbase")
library("DAPAR")

exprsFile <- system.file("extdata", "Exp1_R2_prot.txt", package="DAPARdata")

metadataFile <- system.file("extdata", "samples_Exp1_R2.txt", package="DAPARdata")
metadata = read.table(metadataFile, header=TRUE, sep="\t", as.is=TRUE)
indExpData <- c(49:54)
indFData <- c(1:48, 55:86)
indiceID <- 72
versions <- list(Prostar_Version = "1.12.9",
                 DAPAR_Version = "1.12.9")
Exp1_R2_prot <- createMSnset(exprsFile, 
                          metadata, 
                          indExpData, 
                          indFData, 
                          indiceID, 
                          indexForOriginOfValue = c(36:41),
                          logData=FALSE, 
                          replaceZeros=FALSE,
                          pep_prot_data = "protein",
                          versions)
