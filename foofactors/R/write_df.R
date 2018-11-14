#' Write a data frame
#'
#' Write a daat frame in a tab delimited file while retaining factor levels.
#'
#' @param df dataframe
#' @param filepath string file name and path
#'
#' @export
write_df <- function(df, filepath) {
  # saveRDS preserves factor re-ordering.
  saveRDS(df, filepath)
}
