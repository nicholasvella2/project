test_that("conclusion_t works", {
  q <- list("P-value" = 0.10)
  q1 <- conclusion_t(q)
  print.AsIs(q1)
  expect_type(q1, type = "list")

  expect_equal(print(q1), cat("CONCLUSION\nThere is no evidence that the sample means are different. There is no difference in height between Males and Female"))
})
