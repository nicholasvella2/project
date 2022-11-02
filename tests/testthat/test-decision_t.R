test_that("decision_t works", {
  q <- list("P-value" = 0.004)

  expect_equal(print(decision_t(q)), cat("DECISION", "\nReject NULL hypothesis: YES"))
  expect_type(decision_t(q), type = "list")
})
