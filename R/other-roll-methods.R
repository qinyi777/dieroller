#' @export
"[<-.roll" <- function(x, i, value) {
  if (i > x$total) {
    stop("\nindex out of bounds")
  }
  x$rolls[i] <- value
  x
}

#' @export
"[.roll" <- function(x, i) {
  x$rolls[i]
}


#' @export
"+.roll" <- function(obj, incr) {
  if (length(incr) != 1 | incr <= 0) {
    stop("\ninvalid increament")
  }
  more_flips <- flip(obj, times = incr)
  make_roll(obj, c(obj$rolls, more_flips))
}

#' @rdname roll
#' @param x an R object
#' @export
is.roll <- function(x) {
  inherits(x, "roll")
}


#' @rdname roll
#' @export
as.roll <- function(x) {
  x_die <- die(unique(x))
  make_roll(x_die, x)
}
