library("MSnbase")
library("DAPAR")

exprsFile <- system.file("extdata", "UPSprot2.txt", package="DAPARdata")

metadataFile <- system.file("extdata", "samples2.txt", package="DAPARdata")
metadata = read.table(metadataFile, header=TRUE, sep="\t", as.is=TRUE)
indExpData <- c(49:54)
indFData <- c(1:48, 55:86)
indiceID <- 72

UPSprot2 <- createMSnset(exprsFile, 
                          metadata, 
                          indExpData, 
                          indFData, 
                          indiceID, 
                          pep_prot_data = "protein")
