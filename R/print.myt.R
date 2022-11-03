#' Print Function for "myt"
#' @description This is a custom print function for the "myt" class.
#' @param x is a "myt" class object created by the model helper functions.
#' @param ... treat like normal print function
#' @export print.myt
#' @export

print.myt <- function(x, ...){
  g <- length(x)

  cat("\n")
  cat(unlist(x[1]), "\n")

  if(names(x[2]) == "plots"){
    cat("\n")
    print(x[[3]])
    cat("\n")
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
