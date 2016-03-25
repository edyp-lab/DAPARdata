.onAttach <- function(libname, pkgname) {
  msg <- paste0("\nThis is DAPARdata version ",
                packageVersion("DAPARdata"), ".\n",
                "Use 'DAPARdata()' to list available data sets.")
  packageStartupMessage(msg)  
}



#' This function lists the datasets available in DAPARdata package
#'
#' @title Available datasets in the DAPARdata package
#' @return A list of datasets
#' @examples
#' DAPARdata()
DAPARdata <- function() {
  data(package = "DAPARdata")}
