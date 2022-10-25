
#' @title Builds Exp1_R2_pept dataset
#' 
#' @rdname Exp1_R2_pept
#' 
#' @examples 
#' builds_Exp1_R2_pept()
#' 
#' @importFrom utils read.table

builds_Exp1_R2_pept <- function(){
  
  if (! requireNamespace("DAPAR", quietly = TRUE)) {
    stop("Please install DAPAR: BiocManager::install('DAPAR')")
  }
exprsFile <- system.file("extdata", 
  "Exp1_R2_pept.txt", 
  package = "DAPARdata")

metadataFile <- system.file("extdata", 
  "samples_Exp1_R2.txt", 
  package = "DAPARdata")
metadata = read.table(metadataFile, 
  header = TRUE, 
  sep = "\t", 
  as.is = TRUE)

Exp1_R2_pept <- NULL
Exp1_R2_pept <- DAPAR::createMSnset(
    file = exprsFile,
    metadata = metadata,
    indExpData = seq.int(from = 27, to = 32), 
    colnameForID = 'id', 
    indexForMetacell = seq.int(from = 14, to = 19),
    logData = TRUE, 
    replaceZeros = TRUE,
    pep_prot_data = "peptide",
    proteinId = "Protein_group_IDs",
    software = 'maxquant'
  )

Exp1_R2_pept <- Set_X_CC_infos(Exp1_R2_pept)

save(Exp1_R2_pept, file = './Exp1_R2_pept.RData')
saveRDS(Exp1_R2_pept, './Exp1_R2_pept.MSnset')

}
