not <- function(x) { 1-x }
library(MASS)

a <- fractions(0.91)
b <- fractions(0.92)
c <- fractions(0.53)
ac <- not(a)
bc <- not(b)
cc <- not(c)
adenom <- a*bc*cc
bdenom <- ac*b*cc
cdenom <- ac*bc*c
h <- adenom + bdenom + cdenom
afinal <- adenom/h
bfinal <- bdenom/h
cfinal <- cdenom/h

print(afinal)
print(bfinal)
print(cfinal)