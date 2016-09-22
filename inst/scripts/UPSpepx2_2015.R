library("MSnbase")
library("DAPAR")

exprsFile <- system.file("extdata", "UPSpepx2_2015.txt", package="DAPARdata")

metadataFile <- system.file("extdata", "samples2_2015.txt", package="DAPARdata")
metadata <- read.table(metadataFile, header=TRUE, sep="\t", as.is=TRUE)
indExpData <- c(1:6)
indFData <- c(7:71)
indiceID <- 64

UPSpepx2 <- createMSnset(exprsFile, 
                         metadata, 
                         indExpData, 
                         indFData, 
                         indiceID, 
                         pep_prot_data = "peptide")