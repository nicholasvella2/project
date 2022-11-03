#' Print Function for "mylm"
#' @description This is a custom print function for the "mylm" class.
#' @param x is a "mylm" class object created by the model helper functions.
#' @param ... treat like normal print function.
#' @export print.mylm
#' @export

print.mylm <- function(x, ...){
  g <- length(x)

  cat("\n")
  cat(unlist(x[1]), "\n")

  if(names(x[2]) == "plots"){
    print(x$plots)
  } else if((names(x[2]) != "expected") & (names(x[g]) == "name")){
    for(a in 2:(g-1)){
      cat(names(x[a]),": ", unlist(x[a]), "\n", sep = "")
    }
  } else {
    for(a in 2:g){
      cat(names(x[a]),": ", unlist(x[a]), "\n", sep = "")
    }
  }
}
