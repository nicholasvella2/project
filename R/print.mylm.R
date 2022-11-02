#' Print Function for "mylm"
#' @description This is a custom print function for the "mylm" class.
#' @param x is a "mylm" class object created by the model helper functions.
#' @param ... treat like normal print function.
#' @export print.mylm
#' @export

print.mylm <- function(x, ...){

  cat("\n")
  cat(unlist(x[1]), "\n")

  if(names(x[2]) == "plots"){
    print(x$plots)
  } else if(names(x[2]) != "plots")
    for(a in 2:length(x)){
      cat(names(x[a]),": ", unlist(x[a]), "\n", sep = "")
    }
}





