#' Model for T-test
#' @description This runs the t-test and extracts the important values.
#' @return Returns important values as a list.
#' @param project2022 dataset
#' @export

ttest_t <- function(project2022){
  x_file <- project2022
  test0 <- t.test(height ~ gender, var.equal = TRUE, data = x_file, conf.int = 0.95)
  summ_test0 <- broom::tidy(test0, conf.int = TRUE)


  myttest <- list(title = "MODEL", Method = summ_test0$method, "Female Estimate" = summ_test0$estimate1,
                  "Male Estimate"  =summ_test0$estimate2, "Test Statistic" = summ_test0$statistic,
                  "df" = summ_test0$parameter, "95% CI" = c("(",summ_test0$conf.low,",",summ_test0$conf.high,")"),
                  "P-value" = summ_test0$p.value)
  class(myttest) <- c("myt", "list")

  return(myttest)
}
