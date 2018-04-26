#' @title roll die function
#' @description Simulates rolling a die given number of times
#' @param x die object
#' @param times number of rolls
#' @param prob vector of probabilities for each side of the die
#' @return vector of rolls

#' @export
roll<- function(die, times = 1) {
  check_times(times)
  flips<-flip(die, times = times)
  make_roll(die,flips)
}

# private function to check vector of 'times'
check_times <- function(times) {
  if (times <= 0 | !is.numeric(times)) {
    stop("\nargument 'times' must be a positive integer")
  } else {
    TRUE
  }
}
flip<-function(x,times =1){
  sample(x$sides,size= times,replace =T, prob = x$prob)
}

#' @title Make roll Object
#' @description Constructor function for object "roll"
#' @param coin object of class die
#' @param flips object of class flips
#' @keywords internal
make_roll <- function(die, flips) {
  res <- list(
    rolls = flips,
    sides = die$sides,
    prob = die$prob,
    total = length(flips))
  class(res) <- "roll"
  res
}

#' @export
print.roll <- function(x) {
  cat('object "roll"\n\n')
  print(x$rolls)
  invisible(x)
}

#' @export
summary.roll <- function(x) {
  ta <- table(x$rolls)
  t <- data.frame(ta)
  counts <- t[2]$Freq
  props <- counts/x$total
  freqs <- data.frame(side=x$sides,count=counts,prop=props)
  obj <- list(freqs = freqs)
  class(obj) <- "summary.toss"
  obj
}
#' @export
print.summary.toss <- function(x) {
  cat('summary "toss"\n\n')
  print(x$freqs)
}







