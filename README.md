## Overview

`"dieroller"` is a minimal [R](http://www.r-project.org/) package that
provides functions to simulate rolling a die.

  - `die()` creates a coin object (of class `"die"`)
  - `roll()` tosses a coin object, producing a `"roll"` object.
  - `plot()` method for a `"roll"` object to plot frequencies of heads.
  - `summary()` method for a `"roll"` object.

## Motivation

This package has been developed to illustrate some of the concepts
behind the creation of an R package.

## Installation

Install the development version from GitHub via the package
`"devtools"`:

``` r
# development version from GitHub:
#install.packages("devtools") 

# install "cointoss" (without vignettes)
devtools::install_github("gastonstat/cointoss")

# install "cointoss" (with vignettes)
devtools::install_github("gastonstat/cointoss", build_vignettes = TRUE)
```

## Usage
```{r}
library(dieroller)

#object "die"
# default call: creates a standard fair die
fair_die <- die() 
fair_die
## object "die"
##
## side      prob
##1   1 0.1666667
##2   2 0.1666667
##3   3 0.1666667
##4   4 0.1666667
##5   5 0.1666667
##6   6 0.1666667


#object "roll"
# roll fair die 50 times
fair_die <- die() set.seed(123)
fair50 <- roll(fair_die, times = 50) fair50
## object "roll"
##
## $rolls
## [1]3 6 4 1 1 2 5 1 5 4 1 4 6 5 2 1 3 2 3 1 1 6 5 1 5 6 5 5 3 2 1 1 6 6 2 ## [36] 4 6 3 3 3 2 4 4 4 2 2 3 4 3 1

#Summary method for "roll" objects
set.seed(123)
fair_50rolls <- roll(fair_die, times = 50) 
fair50_sum <- summary(fair_50rolls)
fair50_sum
## summary "roll"
##
##   side count prop
## 1  1   11    0.22  
## 2  2   8     0.16
## 3  3   9     0.18
## 4  4   8     0.16
## 5  5   7     0.14
## 6  6   7     0.14
```
