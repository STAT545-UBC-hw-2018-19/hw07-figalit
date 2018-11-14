#' Preserve order of data factor in levels as it appears or "as is".
#'
#' @param d factor
#'
#' @return factor
#' @export
forders <- function(d) {
  # lets first factor the data
  myDt <- factor(c(as.character(d)))

  # get number of levels
  levels <- nlevels(myDt)

  # initialise an empty vector for factor levels
  unique_data_order <- c(levels)
  index <- 1  # to index in unique_data_order
  for (i in 1:length(d)) {
    if(d[i] %!in% unique_data_order){
      unique_data_order[index] <- d[i]
      index <- index + 1
    }
  }
  levels(myDt) <- unique_data_order
  myDt
}

# helper function for testing existence in a list/vector
'%!in%' <- function(x,y)!('%in%'(x,y))
