## Dati
x1 <- 22.05 # (minore)
p1 <- 0.09

x2 <- 25.84 # (maggiore)
p2 <- 0.08

x3 <- 0.578

## Svolgimento 

mat_a <- matrix(data = c(1,qnorm(p1),1,qnorm(1-p2)),
              nrow = 2, ncol = 2, byrow = TRUE)
mat_b <- c(x1, x2)
tmp <- solve(mat_a, mat_b)
mi <- tmp[1]
sigma <- tmp[2]
rm(mat_a, mat_b, tmp)

risultato3 <- 1 - pnorm(x3) + pnorm(-x3)

print(mi)
print(sigma)
print(risultato3)
