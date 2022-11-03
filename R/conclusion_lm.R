#' Conclusion for Linear Regression
#' @description Summarises the result for the linear regression model.
#' @param object List output "myfit_lm" from the chi_chi function.
#'
#' @return Returns conclusion as a list.
#' @export

conclusion_lm <- function(object){

  name <- object$name
  beta_hat <- object$"Beta Hat"
  p_val <- object$"P-value"


  if (p_val >= 0.05) {
    conclusion <- glue::glue("There is no evidence that the slope (beta) is different than 0. There is no significant linear relationship between {name[3]} and {name[4]}.")
  } else {
    in_decrease <- ifelse(beta_hat > 0, "increases", "decreases")
    conclusion <- glue::glue("There is evidence that the slope (beta) is different than 0. There is a significant linear relationship between {name[3]} and {name[4]}. For each unit-increase in weight, height increases by {round(abs(beta_hat), 4)}.")
  }
  myconclusion <- list(title  = "CONCLUSION", "In Summary" = conclusion)
  class(myconclusion) <- c("mylm", "list")
  return(myconclusion)
}
