suppressPackageStartupMessages(library(dplyr))
#' Reorder factors using desc function.
#'
#' @param x factor
#' @param X factor
#' @param FUN function
#' @return factor
#' @export
reorder_desc <- function(x, X, FUN = mean, ...){
  reorder(x, desc(X), FUN = FUN)
}
