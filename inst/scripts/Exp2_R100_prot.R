library("MSnbase")
library("DAPAR")

exprsFile <- system.file("extdata", "Exp2_R100_prot.txt", package="DAPARdata")

metadataFile <- system.file("extdata", "samples_Exp2_R100.txt", package="DAPARdata")
metadata <- read.table(metadataFile, header=TRUE, sep="\t", as.is=TRUE)
indExpData <- c(1:6)
indFData <- c(7:87)
indiceID <- 79

Exp2_R100_prot <- createMSnset(exprsFile, 
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

fData(Exp2_R100_prot)[,'iBAQ_1_R3'] <- as.numeric(fData(Exp2_R100_prot)[,'iBAQ_1_R3'])
fData(Exp2_R100_prot)[,'iBAQ_100_R1'] <- as.numeric(fData(Exp2_R100_prot)[,'iBAQ_100_R1'])