#' @title Builds Exp2_R2_prot dataset
#' 
#' @rdname Exp2_R2_prot
#' @examples 
#' builds_Exp2_R2_prot()
#' 
#' @importFrom utils read.table
#' 
#' @export

builds_Exp2_R2_prot <- function(){
  
  if (! requireNamespace("DAPAR", quietly = TRUE)) {
    stop("Please install DAPAR: BiocManager::install('DAPAR')")
  }
  
  exprsFile <- system.file(
    "extdata", 
    "Exp2_R2_prot.txt", 
    package = "DAPARdata"
    )

metadataFile <- system.file(
  "extdata", 
  "samples_Exp2_R2.txt", 
  package = "DAPARdata"
  )

metadata <- read.table(
  metadataFile, 
  header = TRUE, 
  sep = "\t", 
  as.is = TRUE
  )

Exp2_R2_prot <- NULL
Exp2_R2_prot <- DAPAR::createMSnset(
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

save(Exp2_R2_prot, file = './Exp2_R2_prot.RData')
saveRDS(Exp2_R2_prot, './Exp2_R2_prot.MSnset')


}