library(MASS)

a <- fractions(0.59)
b <- fractions(0.41)

d_a <- fractions(0.09)
a_d <- fractions(0.24)

d <- (d_a*a)/a_d
# d = d_a*a + d_b*b (teorema delle probabilità totali, essendo il lotto partizionato)
# d - d_a*a = d_b * b
d_b <- (d - d_a*a)/b

b_d <- b*d_b/d

print(d)
print(d_b)
print(b_d)

