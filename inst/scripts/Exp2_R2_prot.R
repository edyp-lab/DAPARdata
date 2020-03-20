library("MSnbase")
library("DAPAR")

exprsFile <- system.file("extdata", "Exp2_R2_prot.txt", package="DAPARdata")

metadataFile <- system.file("extdata", "samples_Exp2_R2.txt", package="DAPARdata")
metadata <- read.table(metadataFile, header=TRUE, sep="\t", as.is=TRUE)
indExpData <- c(1:6)
indFData <- c(7:87)

versions <- list(Prostar_Version = "2.0",DAPAR_Version = "2.0")

Exp2_R2_prot <- createMSnset(exprsFile, 
                         metadata, 
                         indExpData, 
                         indFData, 
                         keyId = 'Majority_protein_IDs', 
                         indexForOriginOfValue = c(37:42),
                         logData=TRUE, 
                         replaceZeros=TRUE,
                         typeOfData = "protein",
                         parentProtId = NULL,
                         versions)