suppressPackageStartupMessages(library(dplyr))
context("Reorder a la dplyr")

test_that("reorder_desc orders in decreasing order for characters", {
  x <- c('m', 'b', 'm', 'b', 'm', 'm')
  z <- c('m', 'b')
  expect_identical(levels(reorder_desc(x, x)), z)
})

test_that("reorder_desc retains order of factors in factor levels as is for strings", {
  x <- c("beta","gamma","alpha","beta", "alpha")
  z <- c('gamma', 'beta', 'alpha')
  expect_identical(levels(reorder_desc(x, x)), z)
})

test_that("reorder_desc retains order of factors in factor levels as is for numbers", {
  x <- c(3, 4, 8, 1, 3)
  z <- c('8', '4', '3', '1')
  expect_identical(levels(reorder_desc(x, x)), z)
})
