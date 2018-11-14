#' Read a data frame
#'
#' Read a data frame in a tab delimited file while retaining factor levels.
#'
#' @param df dataframe
#' @param filepath string file name and path
#'
#' @export
read_df <- function(filepath) {
  # readRDS preserves factor re-ordering.
  con <- gzfile(filepath)
  readRDS(filepath)
  close(con)
}
