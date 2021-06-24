library("MSnbase")
library("DAPAR")

exprsFile <- system.file("extdata", "Exp1_R25_pept.txt", package="DAPARdata")

metadataFile <- system.file("extdata", "samples_Exp1_R25.txt", package="DAPARdata")
metadata <- read.table(metadataFile, header=TRUE, sep="\t", as.is=TRUE, stringsAsFactors = FALSE)


Exp1_R25_pept <- createMSnset(file = exprsFile, 
                              metadata = metadata, 
                              indExpData = 56:61,
                              colnameForID = 'id', 
                              indexForMetacell = 43:48,
                              logData = TRUE, 
                              replaceZeros = TRUE,
                              pep_prot_data = "peptide",
                              proteinId = "Protein_group_IDs",
                              software = 'maxquant')
