## -----------------------------------------------------------------------------
library(pasagropasr)
library(ggplot2)

## -----------------------------------------------------------------------------
data(lambs)

## -----------------------------------------------------------------------------
lambs
head(lambs)

## ----eval=FALSE---------------------------------------------------------------
#  lambs <- read.csv("../inst/extdata/lambs.csv", sep = ",", header = TRUE)

## -----------------------------------------------------------------------------
str(lambs)
names(lambs)

## -----------------------------------------------------------------------------
plot(kkcf ~ PCQ,
  data = lambs,
  xlab = "cm", ylab = "cm"
)

