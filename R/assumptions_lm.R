#' Assumptions for Linear Model
#' @description Provides the assumptions for a linear regression.
#' @param project2022 dataset
#'
#' @return Returns assumptions as a list.
#' @importFrom ggplot2 "ggplot" "geom_point" "xlab" "ylab" "ggtitle" "geom_histogram" "aes"
#' @importFrom stats "lm"
#' @export



assumptions_lm <- function(project2022){
  weight <- NULL
  height <- NULL
  .fitted <- NULL
  .resid <- NULL

  x_file <- project2022
  fit0 <- lm(height ~ weight, data = x_file)

  plot_scatter <- ggplot(data = x_file, aes(x = weight, y = height)) +
    geom_point() +
    xlab("Weight") + ylab("Height") +
    ggtitle("Scatterplot of Height vs Weight")

  lm_resid <- broom::augment(fit0)
  plot_resid <- ggplot(lm_resid, aes(x = .fitted, y= .resid)) +
    geom_point() +
    ggtitle("Scatterplot of fitted values vs residuals") +
    xlab("Fitted Values") + ylab("Residuals")

  plot_hist <- ggplot(lm_resid) +
    geom_histogram(binwidth = 1, aes(x= .resid)) +
    ggtitle("Histogram of residuals") +
    xlab("Residuals") + ylab("")

  plots <- patchwork::wrap_plots(plot_scatter, plot_resid, plot_hist, ncol=1)

  myassumptions <- list(title = "ASSUMPTIONS", plots = plots)
  class(myassumptions) <- c("mylm", "list")
  return(myassumptions)
}
