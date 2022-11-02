#' Model for Linear Regression
#' @description Runs the test and extracts the important values.
#' @param project2022 dataset
#'
#' @return Returns values as a list.
#' @importFrom stats "lm"
#' @importFrom dplyr "filter"
#' @export

fit_lm <- function(project2022){
  term <- NULL
  x_file <- project2022
  fit0 <- lm(height ~ weight, data = x_file)
  name <- names(x_file)

  summ_fit0 <- broom::tidy(fit0, conf.int = TRUE) %>%
    filter(term == "weight")


  myfit <- list( title = "MODEL - Linear Regression", "Beta Hat" = summ_fit0$estimate,
                 "df" = broom::glance(fit0)$df.residual, "P-value" = summ_fit0$p.value,
                 "95% CI" = c("(",summ_fit0$conf.low,",",summ_fit0$conf.high,")"))
  class(myfit) <- c("mylm", "list")
  return(myfit)
}
