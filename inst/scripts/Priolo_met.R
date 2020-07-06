library("MSnbase")
library("DAPAR")

exprsFile <- system.file("extdata", "Priolo_met.txt", package="DAPARdata")

metadataFile <- system.file("extdata", "samples_Priolo_met.txt", package="DAPARdata")
metadata <- read.table(metadataFile, header=TRUE, sep="\t", as.is=TRUE)
indExpData <- c(2:86)
indFData <- c(87:93)
indiceID <- 1
versions <- list(Prostar_Version = "1.12.9",
                 DAPAR_Version = "1.12.9")
Priolo_met <- createMSnset(exprsFile, 
                         metadata, 
                         indExpData, 
                         indFData, 
                         indiceID, 
                         indexForOriginOfValue = c(37:42),
                         logData=TRUE, 
                         replaceZeros=TRUE,
                         pep_prot_data = "metabolite",
                         #proteinId = "Protein_IDs",
                         versions)
