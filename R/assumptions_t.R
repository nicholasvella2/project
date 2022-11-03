#' Assumptions for T-test
#' @description Provides the t-test graphical assumptions.
#' @param data1 A dataframe.Use "project2022" dataset for this.
#' @return Returns assumptions as a list.
#'
#' @importFrom ggplot2 "ggplot" "geom_qq" "geom_qq_line" "xlab" "ylab" "facet_wrap" "ggtitle"
#' @importFrom stats "t.test" "var"
#' @importFrom dplyr "group_by"
#' @export



assumptions_t <- function(data1){
  gender <- NULL
  height <- NULL
  var <- NULL

  x_file <- data1

  x_file1 <- x_file %>%
    group_by(gender)

  #Q-Q plot
  plotqq <- ggplot(data = x_file1, aes(sample = height)) +
    geom_qq() +
    geom_qq_line() +
    facet_wrap(~gender) +
    xlab("Theoretical") + ylab("Sample") +
    ggtitle("Q-Q plots")

  h <- c(var(subset(x_file, gender == "Male", height)), var(subset(x_file, gender == "Female", height)))
  j <- c("Male Variance" = h[1], "Female Variance" = h[2])

  myassumptions <- list(title = "ASSUMPTIONS", plots = plotqq, j)
  class(myassumptions) <- c("myt", "list")
  return(myassumptions)
}
