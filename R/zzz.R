#' @import MSnbase
.onAttach <- function(libname, pkgname) {
msg <- paste0("\nThis is DAPARdata version ",
                utils::packageVersion("DAPARdata"), ".\n",
                "Use 'DAPARdata()' to list available data sets.")
packageStartupMessage(msg)  
}


DAPARdata <- function() {
    utils::data(package = "DAPARdata")}
