library("MSnbase")
library("DAPAR")

exprsFile <- system.file("extdata", "UPSpep2.txt", package="DAPARdata")

metadataFile <- system.file("extdata", "samples2.txt", package="DAPARdata")
metadata = read.table(metadataFile, header=TRUE, sep="\t", as.is=TRUE)
indExpData <- c(20:25)
indFData <- c(1:19, 26:36)
indiceID <- 29

UPSpep2 <- createMSnset(exprsFile, 
                          metadata, 
                          indExpData, 
                          indFData, 
                          indiceID, 
                          pep_prot_data = "peptide")
