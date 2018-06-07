library(MASS)

comp <- function(x) { 1 - x}

a <- fractions(0.59)
b <- fractions(0.91)
c <- fractions(0.44)

h <- a*comp(b) + comp(a)*b
a_h <- (a*comp(b))/h
k <- a*comp(b)*comp(c) + comp(a)*b*c
a_k <- (a*comp(b)*comp(c))/k

print(h)
print(a_h)
print(a_k)