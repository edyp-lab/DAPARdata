#' @title Builds Exp1_R25_pept dataset
#' 
#' @rdname Exp1_R25_pept
#' @examples 
#' builds_Exp1_R25_pept()
#' 
#' @importFrom utils read.table
#' 

builds_Exp1_R25_pept <- function(){
  
  if (! requireNamespace("DAPAR", quietly = TRUE)) {
    stop("Please install DAPAR: BiocManager::install('DAPAR')")
  }
  
  exprsFile <- system.file(
    "extdata", 
    "Exp1_R25_pept.txt", 
    package = "DAPARdata"
    )

metadataFile <- system.file(
  "extdata", 
  "samples_Exp1_R25.txt", 
  package = "DAPARdata"
  )
metadata <- read.table(
  metadataFile, 
  header = TRUE, 
  sep = "\t", 
  as.is = TRUE, 
  stringsAsFactors = FALSE)


Exp1_R25_pept <- DAPAR::createMSnset(
  file = exprsFile, 
  metadata = metadata, 
  indExpData = seq.int(from = 56, to = 61),
  colnameForID = 'id', 
  indexForMetacell = seq.int(from = 43, to = 48),
  logData = TRUE, 
  replaceZeros = TRUE,
  pep_prot_data = "peptide",
  proteinId = "Protein_group_IDs",
  software = 'maxquant'
  )

Exp1_R25_pept <- Set_X_CC_infos(Exp1_R25_pept)
Exp1_R25_pept
}
