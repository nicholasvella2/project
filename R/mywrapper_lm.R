#' Wrapper Function for Linear Regression Model
#' @description Calls the helper functions to provide output for the test.
#' @param data1. A dataset. Use "project2022" for this project.
#' @return Returns a series of cat/plots/tables.
#' @export

mywrapper_lm <- function(data1){
  myhypothesis_lm <- hypothesis_lm(data1)
  myassumptions_lm <- assumptions_lm(data1)
  myfit_lm <- fit_lm(data1)
  mydecision_lm <- decision_lm(myfit_lm)
  myconclusion_lm <- conclusion_lm(myfit_lm)

  print(myhypothesis_lm)
  print(myassumptions_lm)
  print(myfit_lm)
  print(mydecision_lm)
  print(myconclusion_lm)

}
