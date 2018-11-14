context("Factor level orders")

test_that("forders retains order of factors in factor levels as is for character data", {
  x <- c('m', 'b', 'm', 'b', 'm', 'm')
  z <- c('m', 'b')
  expect_identical(levels(forders(x)), z)
})

test_that("forders retains order of factors in factor levels as is for strings", {
  x <- c("beta","gamma","alpha","beta", "alpha")
  z <- c('beta', 'gamma', 'alpha')
  expect_identical(levels(forders(x)), z)
})

test_that("forders retains order of factors in factor levels as is for numbers", {
  x <- c(3, 4, 8, 1, 3)

  # Both numeric and character variables
  # can be made into factors, but a factor's
  # levels will always be character values.
  z <- c('3', '4', '8', '1')
  expect_identical(levels(forders(x)), z)
})
