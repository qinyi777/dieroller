#' @title die
#' @description create a fair die by default
#' @param sides by default numbers
#' @param prob probabilities
#' @return data frame from html
#' @export
die<-function(sides=c(1:6),prob =c (1/6,1/6,1/6,1/6,1/6,1/6)){
  check_sides(sides)
  check_prob(prob)
  object<-list(
    sides=sides,
    prob=prob
  )

  class(object) <- "die"
  object
}

check_sides <- function(sides) {
  if (length(sides) != 6) {
    stop("\n'prob' must be a vector of length 6")
  }
  if (!is.numeric(sides) & !is.character(sides)) {
    stop("\n'sides' must be a character or numeric vector")
  }
  TRUE
}


# private function to check vector of probabilities
check_prob <- function(prob) {
  if (length(prob) != 6 ) {
    stop("\n'prob' must be length 6")
  }
  if (any(is.na(prob))) {
    stop("\n'prob' cannot contain missing values")
  }
  if (any(prob < 0) | any(prob > 1)) {
    stop("\n'prob' values must be between 0 and 1")
  }
  if (sum(prob) != 1) {
    stop("\nelements in 'prob' must add up to 1")
  }
  TRUE
}
#' @export
print.die <- function(x) {
  cat('object "die"\n\n')
  df<-data.frame(sides=x[1],prob=x[2])
  print(df)
  invisible(x)
}


