#' Wrapper Function for T-test
#' @description Calls the helper functions to provide output for the test.
#' @param data1 A dataset. Use "project2022" for this project.
#'
#' @return Returns a series of cat/plots/tables.
#' @export


mywrapper_t <- function(data1){
  myhypothesis_t <- hypothesis_t(data1)
  myassumptions_t <- assumptions_t(data1)
  myttest_t <- ttest_t(data1)
  mydecision_t <- decision_t(myttest_t)
  myconclusion_t <- conclusion_t(myttest_t)


  print(myhypothesis_t)
  print(myassumptions_t)
  print(myttest_t)
  print(mydecision_t)
  print(myconclusion_t)

}
