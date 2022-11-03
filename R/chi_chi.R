#' Model for Chi-Squared test
#' @description Runs the test and extracts the important values.
#' @param data1 A dataframe.Use "project2022" dataset for this.
#'
#' @return Returns values as a list.
#' @importFrom ggplot2 "ggplot" "aes" "facet_wrap" "geom_qq" "ggplot" "geom_qq_line" "xlab" "ylab"
#' @importFrom stats "t.test"
#' @importFrom dplyr "group_by"
#' @export

chi_chi <- function(data1){
  x_file <- data1
  name <- names(x_file)
  obs <- table(x_file$gender, x_file$phys)
  chi0 <- chisq.test(obs)

  mychitest <- list(title = "MODEL", Method = chi0$method, "Test Statistic" = chi0$statistic,
                    "df" = chi0$parameter, "P-value" = chi0$p.value, name = name)
  class(mychitest) <- c("mychi", "list")
  return(mychitest)

}
