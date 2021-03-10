library("MSnbase")
library("DAPAR")

exprsFile <- system.file("extdata", "Exp2_R10_prot.txt", package="DAPARdata")

metadataFile <- system.file("extdata", "samples_Exp2_R10.txt", package="DAPARdata")
metadata <- read.table(metadataFile, header=TRUE, sep="\t", as.is=TRUE)
indExpData <- c(1:6)
indFData <- c(7:87)
indiceID <- 79
versions <- list(Prostar_Version = "1.12.9",DAPAR_Version = "1.12.9")
Exp2_R10_prot <- createMSnset(exprsFile, 
                         metadata, 
                         indExpData, 
                         indFData, 
                         indiceID, 
                         indexForMetacell = c(37:42),
                         logData=TRUE, 
                         replaceZeros=TRUE,
                         pep_prot_data = "protein",
                         proteinId = "Protein_IDs",
                         versions,
                         software = 'maxquant')

fData(Exp2_R10_prot)[,'Sequence_lengths'] <- as.numeric(fData(Exp2_R10_prot)[,'Sequence_lengths'])
fData(Exp2_R10_prot)[,'iBAQ_100_R1'] <- as.numeric(fData(Exp2_R10_prot)[,'iBAQ_100_R1'])
fData(Exp2_R10_prot)[,'iBAQ_10_R2'] <- as.numeric(fData(Exp2_R10_prot)[,'iBAQ_10_R2'])

