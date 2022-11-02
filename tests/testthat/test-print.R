test_that("print.mylm works", {
  q1 <- hypothesis_lm(project2022)
  print.AsIs(q1)

  q <- list("first" = 3, "second" = 4)
  class(q) <- c("mylm", "list")
  expect_equal(print.mylm(q), cat("3\n", "second: 4"))

  expect_length(q, n=2)

})
