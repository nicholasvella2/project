#' Conclusion for Chi-Squared test
#' @description Summarises the result for the chi-squared test.
#' @param object List output "mychi_chi" from the chi_chi function.
#'
#' @return Returns decision as a list.
#' @export

conclusion_chi <- function(object){

  p_val <- object$"P-value"


  if (p_val >= 0.05) {
    conclusion <- "There is no evidence that the variables are dependent.There is no association between gender and physical activity"
  } else {
    conclusion <- "There is evidence that there is a relationship between the two variables. There is an association between gender and physical activity."

  }
  myconclusion <- list(title  = "CONCLUSION", "In Summary" = conclusion)
  class(myconclusion) <- c("mychi", "list")
  return(myconclusion)
}
