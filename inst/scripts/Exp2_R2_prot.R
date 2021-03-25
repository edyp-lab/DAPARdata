library("MSnbase")
library("DAPAR")

exprsFile <- system.file("extdata", "Exp2_R2_prot.txt", package="DAPARdata")

metadataFile <- system.file("extdata", "samples_Exp2_R2.txt", package="DAPARdata")
metadata <- read.table(metadataFile, header=TRUE, sep="\t", as.is=TRUE)
indExpData <- c(1:6)
indFData <- c(7:87)
indiceID <- 79

Exp2_R2_prot <- createMSnset(exprsFile, 
                         metadata, 
                         indExpData, 
                         indFData, 
                         indiceID, 
                         indexForMetacell = c(37:42),
                         logData=TRUE, 
                         replaceZeros=TRUE,
                         pep_prot_data = "protein",
                         proteinId = "Protein_IDs",
                         software = 'maxquant')