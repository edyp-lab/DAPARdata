#' @title Adjacency matrix and connected components information
#' 
#' @param obj An object of class `MSnSet`
#' 
#' @return An object of class `MSnSet`
#' 
#' @export
#' 
#' @examples 
#' Set_X_CC_infos(Exp1_R25_pept)
#' 
Set_X_CC_infos <- function(obj){
  
  if (! requireNamespace("DAPAR", quietly = TRUE)) {
    stop("Please install DAPAR: BiocManager::install('DAPAR')")
  }
  
  Xshared <- DAPAR::BuildAdjacencyMatrix(obj, "Protein_group_IDs", FALSE)
  Xunique <- DAPAR::BuildAdjacencyMatrix(obj, "Protein_group_IDs", TRUE)
  ll.X <- list(matWithSharedPeptides = Xshared, 
               matWithUniquePeptides = Xunique)
  obj <- DAPAR::SetMatAdj(obj, ll.X)
  ll1 <- DAPAR::get.pep.prot.cc(GetMatAdj(obj)$matWithSharedPeptides)
  ll2 <- DAPAR::get.pep.prot.cc(GetMatAdj(obj)$matWithUniquePeptides)
  cc <- list(allPep = ll1, 
             onlyUniquePep = ll2)
  obj <- SetCC(obj, cc)
  
  return(obj)
}


#' @title Builds all datasets of DAPARdata
#' 
#' @export
#' 
#' @return Datasets
#' 
#' @examples 
#' BuildAllDatasets()
#' 
BuildAllDatasets <- function(){
  Exp1_R2_pept <- NULL
  builds_Exp1_R2_pept()
    save(Exp1_R2_pept, file = './Exp1_R2_pept.RData')
    saveRDS(Exp1_R2_pept, './Exp1_R2_pept.MSnset')

    Exp1_R2_prot <- NULL
    builds_Exp1_R2_prot.R()
    save(Exp1_R2_prot, file = './Exp1_R2_prot.RData')
    saveRDS(Exp1_R2_prot, './Exp1_R2_prot.MSnset')

    Exp1_R25_pept <- NULL
    builds_Exp1_R25_pept.R()
    save(Exp1_R25_pept, file = './Exp1_R25_pept.RData')
    saveRDS(Exp1_R25_pept, './Exp1_R25_pept.MSnset')

    Exp1_R25_prot <- NULL
    builds_Exp1_R25_prot.R()
    save(Exp1_R25_prot, file = './Exp1_R25_prot.RData')
    saveRDS(Exp1_R25_prot, './Exp1_R25_prot.MSnset')

    Exp2_R2_pept <- NULL
    builds_Exp2_R2_pept.R()
    save(Exp2_R2_pept, file = './Exp2_R2_pept.RData')
    saveRDS(Exp2_R2_pept, './Exp2_R2_pept.MSnset')

    Exp2_R2_prot <- NULL
    builds_Exp2_R2_prot.R()
    save(Exp2_R2_prot, file = './Exp2_R2_prot.RData')
    saveRDS(Exp2_R2_prot, './Exp2_R2_prot.MSnset')

    Exp2_R10_pept <- NULL
    builds_Exp2_R10_pept.R()
    save(Exp2_R10_pept, file = './Exp2_R10_pept.RData')
    saveRDS(Exp2_R10_pept, './Exp2_R10_pept.MSnset')

    Exp2_R10_prot <- NULL
    builds_Exp2_R10_prot.R()
    save(Exp2_R10_prot, file = './Exp2_R10_prot.RData')
    saveRDS(Exp2_R10_prot, './Exp2_R10_prot.MSnset')

    Exp2_R100_pept <- NULL
    builds_Exp2_R100_pept.R()
    save(Exp2_R100_pept, file = './Exp2_R100_pept.RData')
    saveRDS(Exp2_R100_pept, './Exp2_R100_pept.MSnset')

    Exp2_R100_prot <- NULL
    builds_Exp2_R100_prot.R()
    save(Exp2_R100_prot, file = './Exp2_R100_prot.RData')
    saveRDS(Exp2_R100_prot, './Exp2_R100_prot.MSnset')

}