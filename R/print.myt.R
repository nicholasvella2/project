#' Print Function for "myt"
#' @description This is a custom print function for the "myt" class.
#' @param x is a "myt" class object created by the model helper functions.
#' @param ... treat like normal print function
#' @export print.myt
#' @export

print.myt <- function(x, ...){

  cat("\n")
  cat(unlist(x[1]), "\n")

  if(names(x[2]) == "plots"){
    print(x$plots)
  } else if(names(x[2]) != "plots")
    for(a in 2:length(x)){
      cat(names(x[a]),": ", unlist(x[a]), "\n", sep = "")
    }
}