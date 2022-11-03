#' Wrapper Function for Chi-Squared test
#' @description Calls the helper functions to provide output for the test.
#' @param data1 A dataset. Use "project2022" for this project.
#'
#' @return Returns a series of cat/plots/tables.
#' @export

mywrapper_chi <- function(data1){
  myhypothesis_chi <- hypothesis_chi(data1)
  myassumptions_chi <- assumptions_chi(data1)
  mychi_chi <- chi_chi(data1)
  mydecision_chi <- decision_chi(mychi_chi)
  myconclusion_chi <- conclusion_chi(mychi_chi)

  print(myhypothesis_chi)
  print(myassumptions_chi)
  print(mychi_chi)
  print(mydecision_chi)
  print(myconclusion_chi)

}
