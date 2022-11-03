#' Hypotheses for Chi-Squared Test
#'
#' @param data1 A dataframe.Use "project2022" dataset for this.
#' @description Provides the null and alterantive hypotheses.
#' @return Returns hypotheses as a list.
#' @export

hypothesis_chi<- function(data1){
  x_file <- data1

  myhypothesis <- list(title = "HYPOTHESIS", "Null Hypothesis" = "H0 is the two variables are independent.",
                       "Alternate Hypothesis" = "H1 is there is a relationship between the variables.")
  class(myhypothesis) <- c("mychi", "list")
  return(myhypothesis)

}
