library("MSnbase")
library("DAPAR")

exprsFile <- system.file("extdata", "Exp1_R2_pept.txt", package="DAPARdata")

metadataFile <- system.file("extdata", "samples_Exp1_R2.txt", package="DAPARdata")
metadata = read.table(metadataFile, header=TRUE, sep="\t", as.is=TRUE)
indExpData <- c(27:32)
indFData <- c(1:26, 33:36)
indiceID <- 35
versions <- list(Prostar_Version = "1.12.9",
                 DAPAR_Version = "1.12.9")

Exp1_R2_pept <- createMSnset(exprsFile, 
                          metadata, 
                          indExpData, 
                          indFData, 
                          indiceID, 
                          indexForMetacell = c(14:19),
                          logData=TRUE, 
                          replaceZeros=TRUE,
                          pep_prot_data = "peptide",
                          proteinId = "Protein_group_IDs",
                          versions,
                          software = 'maxquant')
