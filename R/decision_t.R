#' Decision for T-test.
#' @description Provides the "decision" on which hypothesis to reject/accept.
#' @param object List output "myttest_t" from the chi_chi function.
#'
#' @return Returns decision as a list.
#' @export

decision_t <- function(object){
  p_val <- object$"P-value"

  if (p_val>=0.05) {
    mydecision <- list(title = "DECISION", "Reject NULL Hypothesis" = "NO")
  } else {
    mydecision <- list(title = "DECISION",  "Reject NULL hypothesis" = "YES")
  }
  class(mydecision) <- c("mylm", "list")
  return(mydecision)
}
