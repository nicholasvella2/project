#' Assumptions for Linear Model
#' @description Provides the assumptions for a linear regression.
#' @param data1 A dataframe.Use "project2022" dataset for this.
#'
#' @return Returns assumptions as a list.
#' @importFrom ggplot2 "ggplot" "geom_point" "xlab" "ylab" "ggtitle" "geom_histogram" "aes"
#' @importFrom stats "lm"
#' @export



assumptions_lm <- function(data1){
  weight <- NULL
  height <- NULL
  .fitted <- NULL
  .resid <- NULL

  x_file <- data1
  fit0 <- lm(height ~ weight, data = x_file)

  #scatterplot of data points
  plot_scatter <- ggplot(data = x_file, aes(x = weight, y = height)) +
    geom_point() +
    xlab("Weight") + ylab("Height") +
    ggtitle("Scatterplot of Height vs Weight")

  #fitted vs residuals graph
  lm_resid <- broom::augment(fit0)
  plot_resid <- ggplot(lm_resid, aes(x = .fitted, y= .resid)) +
    geom_point() +
    ggtitle("Scatterplot of fitted values vs residuals") +
    xlab("Fitted Values") + ylab("Residuals")

  #histogram of residuals
  plot_hist <- ggplot(lm_resid) +
    geom_histogram(binwidth = 1, aes(x= .resid)) +
    ggtitle("Histogram of residuals") +
    xlab("Residuals") + ylab("")

  #formatting plots together
  plots <- patchwork::wrap_plots(plot_scatter, plot_resid, plot_hist, ncol=1)

  myassumptions <- list(title = "ASSUMPTIONS", plots = plots)
  class(myassumptions) <- c("mylm", "list")
  return(myassumptions)
}
