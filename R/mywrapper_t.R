#' Wrapper Function for T-test
#' @description Calls the helper functions to provide output for the test.
#' @param project2022 dataset.
#'
#' @return Returns a series of cat/plots/tables.
#' @export


mywrapper_t <- function(project2022){
  myhypothesis_t <- hypothesis_t(project2022)
  myassumptions_t <- assumptions_t(project2022)
  myttest_t <- ttest_t(project2022)
  mydecision_t <- decision_t(myttest_t)
  myconclusion_t <- conclusion_t(myttest_t)


  print(myhypothesis_t)
  print(myassumptions_t)
  print(myttest_t)
  print(mydecision_t)
  print(myconclusion_t)

}
