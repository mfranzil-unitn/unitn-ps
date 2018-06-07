n <- 4
coeffSigma <- 1/5

prX1 <- 1-pnorm(coeffSigma)

risposta1 <- prX1 ^ n

risposta2 <- 1-pnorm(sqrt(n)*coeffSigma);

print(risposta1)

print(risposta2)
