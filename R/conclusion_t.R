#' Conclusion for T-test
#' @description Summarises the result for the t-test.
#' @param object List output "myttest_t" from the ttest_t function.
#'
#' @return Returns conclusion as a list.
#' @export

conclusion_t <- function(object){

  p_val <- object$"P-value"


  if (p_val >= 0.05) {
    conclusion <- "There is no evidence that the sample means are different. There is no difference in height between Males and Females."
  } else {
    conclusion <- "There is evidence that the sample means are different. There is a difference in height between Males and Females."

  }
  myconclusion <- list(title  = "CONCLUSION", "In Summary" = conclusion)
  class(myconclusion) <- c("myt", "list")
  return(myconclusion)
}
