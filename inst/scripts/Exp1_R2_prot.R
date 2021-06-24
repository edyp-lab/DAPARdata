library("MSnbase")
library("DAPAR")

exprsFile <- system.file("extdata", "Exp1_R2_prot.txt", package="DAPARdata")

metadataFile <- system.file("extdata", "samples_Exp1_R2.txt", package="DAPARdata")
metadata = read.table(metadataFile, header=TRUE, sep="\t", as.is=TRUE)

Exp1_R2_prot <- createMSnset(file = exprsFile, 
                             metadata = metadata, 
                             indExpData = 49:54, 
                             colnameForID = "id", 
                             indexForMetacell = 36:41,
                             logData = TRUE, 
                             replaceZeros = TRUE,
                             pep_prot_data = "protein",
                             proteinId = "Protein_IDs",
                             software = 'maxquant')
