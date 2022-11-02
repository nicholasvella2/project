#' Decision for Linear Regression model.
#' @description Provides the "decision" on which hypothesis to reject/accept.
#' @param object List output "myfit_lm" from the chi_chi function.
#'
#' @return Returns decision as a list.
#' @export

decision_lm <- function(object){
  p_val <- object$"P-value"

  if (p_val>=0.05) {
    mydecision <- list(title = "DECISION", "Reject NULL Hypothesis" = "NO")
  } else {
    mydecision <- list(title = "DECISION",  "Reject NULL hypothesis" = "YES")
  }
  class(mydecision) <- c("mylm", "list")
  return(mydecision)
}
