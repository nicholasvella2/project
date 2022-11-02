test_that("hypothesis_lm works", {
  q <- hypothesis_lm(project2022)
  expect_type(q, type = "list")
  expect_length(q, n = 3)
})
