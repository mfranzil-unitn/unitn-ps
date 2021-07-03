x <- c(-8, -3, 9)
pr_1 <- 4
pr_2 <- 2
pr_3 <- pr_1 + pr_2


# Svolgimento
library(MASS)
print(0)
print(fractions(1/pr_3))
a <- x[3]/-(x[1]*pr_1 + x[2]*pr_2 + x[3]*(-pr_3))
print(fractions(a))
print(x[1]^2*(a*pr_1) + x[2]^2*(a*pr_2) + x[3]^2*(1-(a*pr_3)))