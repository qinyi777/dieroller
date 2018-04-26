## ---- echo = FALSE, message = FALSE--------------------------------------
knitr::opts_chunk$set(collapse = T, comment = "#>")
library(dieroller)

## ------------------------------------------------------------------------
#The package "dieroll" is a minimal implementation for simulating tossing a die a given number of times, and to visualize the relative frequencies in such a series of rolls.

## ------------------------------------------------------------------------
fair_die <- die() 
fair_die

## ------------------------------------------------------------------------
loaded_die <- die(prob = c(0.075, 0.1, 0.125, 0.15, 0.20, 0.35))
loaded_die

## ------------------------------------------------------------------------
set.seed(123)
fair_50rolls <- roll(fair_die, times = 50)
fair_50rolls

## ------------------------------------------------------------------------
set.seed(123)
fair_50rolls <- roll(fair_die, times = 50) 
fair50_sum <- summary(fair_50rolls)
fair50_sum

## ---- fig.show='hold'----------------------------------------------------
plot(fair_50rolls)

