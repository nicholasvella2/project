#' Hypotheses for Linear Regression
#' @description Provides the null and alternative hypotheses.
#' @param project2022 dataset
#'
#' @return Returns a list.
#' @export


hypothesis_lm <- function(project2022){
  x_file <- project2022
  myhypothesis <- list(title = "HYPOTHESIS", "Null Hypothesis" = "H0 is beta is equal to zero.",
                       "Alternate Hypothesis" = "H1 is beta is not equal to zero.\n(Where beta is the slope parameter in the model)")
  class(myhypothesis) <- c("mylm", "list")
  return(myhypothesis)

}
