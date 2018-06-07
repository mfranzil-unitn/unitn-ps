## Dati

mi.1 <- 1.02
var.1 <- 2.17

mi.2 <- 1.85
var.2 <- 4.65

## Svolgimento


y.negativa <- pnorm(0, mi.2, sqrt(var.2))
x.negativa <- pnorm(0, mi.1, sqrt(var.1))

pr.1 <- 1 - (x.negativa*y.negativa)
pr.2 <- (1 - x.negativa)/pr.1

print(pr.1)
print(pr.2)