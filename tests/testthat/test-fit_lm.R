test_that("filt_lm works", {
  q <- fit_lm(project2022)

  expect_length(q, n=6)
  expect_type(q, type = "list")
})
