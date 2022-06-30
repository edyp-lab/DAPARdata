
#' @title Builds Exp2_R10_prot dataset
#' 
#' @rdname Exp2_R10_prot
#' @examples 
#' builds_Exp2_R10_prot()
#' 
#' @importFrom utils read.table
#' 
builds_Exp2_R10_prot <- function(){
  
  if (! requireNamespace("DAPAR", quietly = TRUE)) {
    stop("Please install DAPAR: BiocManager::install('DAPAR')")
  }
  
  exprsFile <- system.file(
    "extdata", 
    "Exp2_R10_prot.txt", 
    package="DAPARdata"
    )

metadataFile <- system.file(
  "extdata", 
  "samples_Exp2_R10.txt", 
  package = "DAPARdata"
  )

metadata <- read.table(metadataFile, 
  header = TRUE, 
  sep="\t", 
  as.is = TRUE
  )

Exp2_R10_prot <- DAPAR::createMSnset(
  file = exprsFile, 
  metadata = metadata, 
  indExpData = seq_len(6), 
  colnameForID = 'id',
  indexForMetacell = seq.int(from = 43, to = 48),
  logData = TRUE, 
  replaceZeros = TRUE,
  pep_prot_data = "protein",
  proteinId = "Protein_IDs",
  software = 'maxquant'
  )

Exp2_R10_prot
}