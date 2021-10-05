library("MSnbase")
library("DAPAR")

exprsFile <- system.file("extdata", "Exp2_R100_prot.txt", package="DAPARdata")

metadataFile <- system.file("extdata", "samples_Exp2_R100.txt", package="DAPARdata")
metadata <- read.table(metadataFile, header=TRUE, sep="\t", as.is=TRUE)

Exp2_R100_prot <- createMSnset(file = exprsFile, 
                               metadata = metadata,
                               indExpData = 1:6, 
                               colnameForID = 'id', 
                               indexForMetacell = 43:48,
                               logData = TRUE, 
                               replaceZeros = TRUE,
                               pep_prot_data = "protein",
                               proteinId = "Protein_IDs",
                               software = 'maxquant')
