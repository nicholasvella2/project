#' Hypotheses for Chi-Squared Test
#'
#' @param project2022 dataset
#' @description Provides the null and alterantive hypotheses.
#' @return Returns hypotheses as a list.
#' @export

hypothesis_chi<- function(project2022){
  x_file <- project2022
  name <- names(x_file)
  myhypothesis <- list(title = "HYPOTHESIS", "Null Hypothesis" = "H0 is gender and physical activity are independent.",
                       "Alternate Hypothesis" = "H1 is there is an association between gender and physical activity.")
  class(myhypothesis) <- c("mychi", "list")
  return(myhypothesis)

}
