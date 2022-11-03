test_that("mywrapper functions work", {
  q1 <- mywrapper_chi(project2022)
  q2 <- mywrapper_lm(project2022)
  q <- mywrapper_t(project2022)


  expect_no_error(q)
  expect_no_error(q1)
  expect_no_error(q2)

})
