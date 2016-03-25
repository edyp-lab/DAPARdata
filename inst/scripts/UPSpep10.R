library("MSnbase")
library("DAPAR")

exprsFile <- system.file("extdata", "UPSpepx2.txt", package="DAPARdata")

metadataFile <- system.file("extdata", "samples.txt", package="DAPARdata")
metadata <- read.table(metadataFile, header=TRUE, sep="\t", as.is=TRUE)
indExpData <- c(56:61)
indFData <- c(1:55,62:71)
indiceID <- 64

UPSpepx2 <- createMSnset(exprsFile, metadata, indExpData, indFData, indiceID, 
                          pep_prot_data = "peptide")
