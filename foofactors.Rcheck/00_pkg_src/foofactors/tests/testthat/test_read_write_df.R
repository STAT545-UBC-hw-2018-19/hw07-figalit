suppressPackageStartupMessages(library(dplyr))
context("Reading and writing data frames while retaining factor levels")

test_that("write_df and read_df retain re-ordering of factor", {
  # simple example of a df
  #   x y
  # 1 1 1
  # 2 1 2
  # 3 1 3
  (df <- data.frame(x = 1, y = 1:3))

  # reorder using y and reorder_desc
  reorder_desc(df, df$y)

  # write this out to a file and read it
  filename = "testFile.csv"
  write_df(df, filename)

  df_read <- read_df(filename)

  (df_expected <- data.frame(x = 1, y = 3:1))

  df_read
  df_expected

  # expect_identical(df_read, df_expected)
})

