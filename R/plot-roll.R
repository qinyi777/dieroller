#' @title Plot of object roll
#' @description Plots the relative frequencies of a series of rolls
#' @param x an object of class \code{"die"}
#' @param side number indicating which side of die to consider
#' @param \dots arguments to be passed to/from other methods

#' @export
plot.roll <- function(x,side=1) {
  side <- c(1:6)
  freq <- data.frame(table(x$rolls))[2]$Freq/x$total
  side <- c(1,2,3,4,5,6)
  barplot(freq,xlab = "sides of die",ylab = "relative frequency",names.arg = side, main= sprintf("Relative Frequencies in a series of %s die rolls",x$total))
}
