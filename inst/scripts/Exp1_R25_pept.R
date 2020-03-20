library("MSnbase")
library("DAPAR")

exprsFile <- system.file("extdata", "Exp1_R25_pept.txt", package="DAPARdata")

metadataFile <- system.file("extdata", "samples_Exp1_R25.txt", package="DAPARdata")
metadata <- read.table(metadataFile, header=TRUE, sep="\t", as.is=TRUE, stringsAsFactors = FALSE)
indExpData <- c(56:61)
indFData <- c(1:55,62:71)
keyId <- "Sequence"
versions <- list(Prostar_Version = "2.0",DAPAR_Version = "2.0")

Exp1_R25_pept <- createMSnset(file = exprsFile, 
                        metadata = metadata, 
                        indExpData, 
                        indFData, 
                        keyId, 
                        indexForOriginOfValue = c(43:48),
                        logData=TRUE, 
                        replaceZeros=TRUE,
                        typeOfData = "peptide",
                        parentProtId= "Protein_group_IDs",
                        versions)
