suppressPackageStartupMessages(library(dplyr))
context("Reading and writing data frames while retaining factor levels")

test_that("write_df and read_df retain re-ordering of factor", {
  # A sample data frame
  data <- read.table(header=TRUE, text='
     id weight   size
     1     20  small
     2     27  large
     3     24 medium
  ')

  # Reorder by column number
  data_new <- data[c(1,3,2)]
  df_expected <- data[c(1,3,2)]
  #>   id   size weight
  #> 1  1  small     20
  #> 2  2  large     27
  #> 3  3 medium     24

  # write this out to a file
  filename = "testFile.csv"
  write_df(data_new, filename)

  # read it out
  data_read <- read_df(filename)

  expect_true(identical(data_read, df_expected))
})

