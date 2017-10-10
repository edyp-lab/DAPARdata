library("MSnbase")
library("DAPAR")

exprsFile <- system.file("extdata", "Exp1_R25_pept.txt", package="DAPARdata")

metadataFile <- system.file("extdata", "samples_Exp1_R25.txt", package="DAPARdata")
metadata <- read.table(metadataFile, header=TRUE, sep="\t", as.is=TRUE)
indExpData <- c(56:61)
indFData <- c(1:55,62:71)
indiceID <- 64

Exp1_R25_pept <- createMSnset(exprsFile, 
                        metadata, 
                        indExpData, 
                        indFData, 
                        indiceID, 
                        pep_prot_data = "peptide")
