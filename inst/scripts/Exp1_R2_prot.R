library("MSnbase")
library("DAPAR")

exprsFile <- system.file("extdata", "Exp1_R2_prot.txt", package="DAPARdata")

metadataFile <- system.file("extdata", "samples_Exp1_R2.txt", package="DAPARdata")
metadata = read.table(metadataFile, header=TRUE, sep="\t", as.is=TRUE)
indExpData <- c(49:54)
indiceID <- 78

Exp1_R2_prot <- createMSnset(exprsFile, 
                          metadata, 
                          indExpData, 
                          indiceID, 
                          indexForMetacell = c(36:41),
                          logData=FALSE, 
                          replaceZeros=TRUE,
                          pep_prot_data = "protein",
                          proteinId = "Protein_IDs",
                          software = 'maxquant')
