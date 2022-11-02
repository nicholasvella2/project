#' Model for Chi-Squared test
#' @description Runs the test and extracts the important values.
#' @param project2022 dataset
#'
#' @return Returns values as a list.
#' @importFrom ggplot2 "ggplot" "aes" "facet_wrap" "geom_qq" "ggplot" "geom_qq_line" "xlab" "ylab"
#' @importFrom stats "t.test"
#' @importFrom dplyr "group_by"
#' @export

chi_chi <- function(project2022){
  x_file <- project2022
  name <- names(x_file)
  obs <- table(x_file$gender, x_file$phys)
  chi0 <- chisq.test(obs)

  mychitest <- list(title = "MODEL", Method = chi0$method, "Test Statistic" = chi0$statistic,
                    "df" = chi0$parameter, "P-value" = chi0$p.value)
  class(mychitest) <- c("mychi", "list")
  return(mychitest)

}
