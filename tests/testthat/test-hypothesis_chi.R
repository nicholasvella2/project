test_that("hypothesis_chi works", {
  q <- hypothesis_chi(project2022)
  expect_equal(print(q), cat("HYPOTHESIS\n", "Null Hypothesis: H0 is gender and physical activity are independent.", "\n",
                      "Alternate Hypothesis: H1 is there is an assiociation between gender and physical activity."))
  expect_type(q, type = "list")
})
