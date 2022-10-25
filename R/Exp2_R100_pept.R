#' @title Builds Exp2_R100_pept dataset
#' 
#' @rdname Exp2_R100_pept
#' @examples 
#' builds_Exp2_R100_pept()
#' 
#' @importFrom utils read.table
#' 
#' @export
#' 
builds_Exp2_R100_pept <- function(){
  if (! requireNamespace("DAPAR", quietly = TRUE)) {
    stop("Please install DAPAR: BiocManager::install('DAPAR')")
  }
  exprsFile <- system.file(
    "extdata", 
    "Exp2_R100_pept.txt", 
    package="DAPARdata"
    )

metadataFile <- system.file(
  "extdata", 
  "samples_Exp2_R100.txt", 
  package="DAPARdata"
  )

metadata <- read.table(
  metadataFile, 
  header = TRUE, 
  sep = "\t", 
  as.is = TRUE
  )

Exp2_R100_pept <- DAPAR::createMSnset(
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

Exp2_R100_pept <- Set_X_CC_infos(Exp2_R100_pept)

save(Exp2_R100_pept, file = './Exp2_R100_pept.RData')
saveRDS(Exp2_R100_pept, './Exp2_R100_pept.MSnset')
}
