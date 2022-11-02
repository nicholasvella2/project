#' Hypotheses for T-test
#' @description Provides the hypotheses for the t-test.
#' @param project2022 dataset
#'
#' @return Returns hypotheses as a list.
#' @export

hypothesis_t <- function(project2022){
  x_file <- project2022
  myhypothesis <- list(title = "HYPOTHESIS", "Null Hypothesis" = "H0 is beta is the sample means are equal.",
                       "Alternate Hypothesis" = "H1 is beta is the sample means are not equal")
  class(myhypothesis) <- c("myt", "list")
  return(myhypothesis)
}
