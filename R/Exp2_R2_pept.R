#' @title Builds Exp2_R2_pept dataset
#' 
#' @rdname Exp2_R2_pept
#' @examples 
#' builds_Exp2_R2_pept()
#' 
#' @importFrom utils read.table
#' 

builds_Exp2_R2_pept <- function(){
  
  if (! requireNamespace("DAPAR", quietly = TRUE)) {
    stop("Please install DAPAR: BiocManager::install('DAPAR')")
  }
  
  exprsFile <- system.file(
    "extdata", 
    "Exp2_R2_pept.txt", 
    package="DAPARdata")

metadataFile <- system.file(
  "extdata", 
  "samples_Exp2_R2.txt", 
  package="DAPARdata"
  )

metadata <- read.table(
  metadataFile, 
  header = TRUE, 
  sep = "\t", 
  as.is = TRUE
  )

Exp2_R2_pept <- DAPAR::createMSnset(
  file = exprsFile, 
  metadata = metadata,
  indExpData = seq_len(6), 
  colnameForID = 'id', 
  indexForMetacell = seq.int(from = 49, to = 54),
  logData = TRUE, 
  replaceZeros = TRUE,
  pep_prot_data = "peptide",
  proteinId = "Protein_group_IDs",
  software = 'maxquant'
  )

Exp1_R2_pept <- Set_X_CC_infos(Exp1_R2_pept)

Exp1_R2_pept
}