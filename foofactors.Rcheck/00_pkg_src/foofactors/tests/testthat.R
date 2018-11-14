Sys.setenv("R_TESTS" = "")
suppressPackageStartupMessages(library(dplyr))
library(testthat)
library(foofactors)

test_check("foofactors")
