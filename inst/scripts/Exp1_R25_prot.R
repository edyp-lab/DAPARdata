library("MSnbase")
library("DAPAR")

exprsFile <- system.file("extdata", "Exp1_R25_prot.txt", package="DAPARdata")

metadataFile <- system.file("extdata", "samples_Exp1_R25.txt", package="DAPARdata")
metadata = read.table(metadataFile, header=TRUE, sep="\t", as.is=TRUE)
indExpData <- c(49:54)
indFData <- c(1:48, 55:86)
keyId <- 78
versions <- list(Prostar_Version = "2.0",
                 DAPAR_Version = "2.0")

Exp1_R25_prot <- createMSnset(exprsFile, 
                        metadata, 
                        indExpData, 
                        indFData, 
                        keyId = keyId, 
                        indexForOriginOfValue = c(36:41),
                        logData=TRUE, 
                        replaceZeros=TRUE,
                        typeOfData = "protein",
                        parentProtId = NULL,
                        versions)
