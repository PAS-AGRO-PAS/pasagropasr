test_that("Lamds breeds data frame", {
  data(lambBreeds)
  expect_true(is.data.frame(lambBreeds) == TRUE)
})
