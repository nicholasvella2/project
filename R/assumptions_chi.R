#' Assumptions for Chi-Squared Test
#' @description Tabular assumptions for chi-squared test (expected values).
#' @param project2022 dataset
#'
#' @return Returns list.
#' @importFrom stats "chisq.test"
#' @export

assumptions_chi <- function(project2022){

  x_file <- project2022
  obs <- table(x_file$gender, x_file$phys)
  chi0 <- chisq.test(obs)

  myassumptions <- list(title = "ASSUMPTIONS", expected = chi0$expected)
  class(myassumptions) <- c("mychi", "list")

  return(myassumptions)
}
