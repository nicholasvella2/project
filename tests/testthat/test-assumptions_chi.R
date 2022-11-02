test_that("assumptions_chi works", {
  x_file <- project2022
  obs <- table(x_file$gender, x_file$phys)
  chi0 <- chisq.test(obs)


  q <- assumptions_chi(project2022)
  expect_equal(length(q), 2)
  expect_type(q, type = "list")

  expect_equal(q$expected, chi0$expected)
})
