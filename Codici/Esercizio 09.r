library(MASS)
# Arciere
a <- 3/10
ac <- 1 - a

# Domanda 1: P(colpita al n tentativo)
n <- 3
print(fractions((ac^(n-1))*a))

# Domanda 2: P(colpita dopo m tentativi)
m <- 6
print(fractions(ac^m))

# Domanda 3: Numero di tentativi affinché la 
# probabilità di colpirlo sia z
z <- 0.16
zc <- 1 - z

print(log(zc, base = ac))
print(" Round: ")
print(ceiling(log(zc, base = ac)))