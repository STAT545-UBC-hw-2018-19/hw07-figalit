Sys.setenv("R_TESTS" = "")

library(testthat)
library(foofactors)

test_check("foofactors")
