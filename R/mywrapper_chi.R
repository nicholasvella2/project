#' Wrapper Function for Chi-Squared test
#' @description Calls the helper functions to provide output for the test.
#' @param project2022 dataset.
#'
#' @return Returns a series of cat/plots/tables.
#' @export

mywrapper_chi <- function(project2022){
  myhypothesis_chi <- hypothesis_chi(project2022)
  myassumptions_chi <- assumptions_chi(project2022)
  mychi_chi <- chi_chi(project2022)
  mydecision_chi <- decision_chi(mychi_chi)
  myconclusion_chi <- conclusion_chi(mychi_chi)

  print(myhypothesis_chi)
  print(myassumptions_chi)
  print(mychi_chi)
  print(mydecision_chi)
  print(myconclusion_chi)

}
