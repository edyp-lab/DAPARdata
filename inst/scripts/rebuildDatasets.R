#' @title Adjacency matrix and connected components information
#' 
#' @param obj An object of class `MSnSet`
#' 
#' @return An object of class `MSnSet`
#' 
#' @export
#' 
#' @examples 
#' data(Exp1_R25_pept)
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
  ll1 <- DAPAR::get.pep.prot.cc(DAPAR::GetMatAdj(obj)$matWithSharedPeptides)
  ll2 <- DAPAR::get.pep.prot.cc(DAPAR::GetMatAdj(obj)$matWithUniquePeptides)
  cc <- list(allPep = ll1, onlyUniquePep = ll2)
  obj <- DAPAR::SetCC(obj, cc)
  
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
    

    Exp1_R2_prot <- NULL
    builds_Exp1_R2_prot()
    

    Exp1_R25_pept <- NULL
    builds_Exp1_R25_pept()


    Exp1_R25_prot <- NULL
    builds_Exp1_R25_prot()


    Exp2_R2_pept <- NULL
    builds_Exp2_R2_pept()
    
    Exp2_R2_prot <- NULL
    builds_Exp2_R2_prot()
    
    Exp2_R10_pept <- NULL
    builds_Exp2_R10_pept()
    
    Exp2_R10_prot <- NULL
    builds_Exp2_R10_prot()
    
    Exp2_R100_pept <- NULL
    builds_Exp2_R100_pept()


    Exp2_R100_prot <- NULL
    builds_Exp2_R100_prot()


}