#' Model for Linear Regression
#' @description Runs the test and extracts the important values.
#' @param data1 A dataframe.Use "project2022" dataset for this.
#'
#' @return Returns values as a list.
#' @importFrom stats "lm"
#' @importFrom dplyr "filter"
#' @export

fit_lm <- function(data1){
  term <- NULL

  name <- names(data1)
  x_file <- data1
  fit0 <- lm(height ~ weight, data = x_file)

  #filtering linear model to be easily extracted
  summ_fit0 <- broom::tidy(fit0, conf.int = TRUE) %>%
    filter(term == "weight")


  myfit <- list( title = "MODEL - Linear Regression", "Beta Hat" = summ_fit0$estimate,
                 "df" = broom::glance(fit0)$df.residual, "P-value" = summ_fit0$p.value,
                 "95% CI" = c("(",summ_fit0$conf.low,",",summ_fit0$conf.high,")"), name = name)

  class(myfit) <- c("mylm", "list")
  return(myfit)
}
