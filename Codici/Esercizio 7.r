library(MASS)

a_white <- 11
a_black <- 10
b_white <- 9
b_black <- 18

# a_white <- 19
# a_black <- 18
# b_white <- 17
# b_black <- 17

# a_white <- 12
# a_black <- 8
# b_white <- 10
# b_black <- 14

a <- a_white + a_black
b <- b_white + b_black

primadomanda <- ((b_white+1)/(b+1) * a_white/a) + ((b_white/(b+1)) * (a_black/a))
secondadomanda <- ((b_white+1)/(b+1) * a_white/a) / primadomanda


print(fractions(primadomanda))
print(fractions(secondadomanda))