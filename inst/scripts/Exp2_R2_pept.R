library("MSnbase")
library("DAPAR")

exprsFile <- system.file("extdata", "Exp2_R2_pept.txt", package="DAPARdata")

metadataFile <- system.file("extdata", "samples_Exp2_R2.txt", package="DAPARdata")
metadata <- read.table(metadataFile, header=TRUE, sep="\t", as.is=TRUE)
indExpData <- c(1:6)
indFData <- c(7:71)
indiceID <- 64
versions <- list(Prostar_Version = "1.12.9",DAPAR_Version = "1.12.9")
Exp2_R2_pept <- createMSnset(exprsFile, 
                         metadata, 
                         indExpData, 
                         indFData, 
                         indiceID, 
                         indexForOriginOfValue = c(43:48),
                         logData=FALSE, 
                         replaceZeros=FALSE,
                         pep_prot_data = "peptide",
                         versions)