#' Wrapper Function for Linear Regression Model
#' @description Calls the helper functions to provide output for the test.
#' @param project2022 dataset.
#'
#' @return Returns a series of cat/plots/tables.
#' @export

mywrapper_lm <- function(project2022){
  myhypothesis_lm <- hypothesis_lm(project2022)
  myassumptions_lm <- assumptions_lm(project2022)
  myfit_lm <- fit_lm(project2022)
  mydecision_lm <- decision_lm(myfit_lm)
  myconclusion_lm <- conclusion_lm(myfit_lm)

  print(myhypothesis_lm)
  print(myassumptions_lm)
  print(myfit_lm)
  print(mydecision_lm)
  print(myconclusion_lm)

}
