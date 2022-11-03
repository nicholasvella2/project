#' Assumptions for Chi-Squared Test
#' @description Tabular assumptions for chi-squared test (expected values).
#' @param data1 A dataframe.Use "project2022" dataset for this.
#'
#' @return Returns list.
#' @importFrom stats "chisq.test"
#' @export


assumptions_chi <- function(data1){

  x_file <- data1
  obs <- table(x_file$gender, x_file$phys)
  chi0 <- chisq.test(obs)

  myassumptions <- list(title = "ASSUMPTIONS", expected = chi0$expected)
  class(myassumptions) <- c("mychi", "list")

  return(myassumptions)
}

