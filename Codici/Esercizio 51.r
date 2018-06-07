muX <- 3.68
sigma1 <- 0.64

muY <- 4.8
sigma2 <- 0.49

domanda1 <- 9.51

muSomma <- muX + muY
sigmaQuadratoSomma <- sigma1^2 + sigma2^2
sigmaSomma <- sqrt(sigmaQuadratoSomma)

risposta1 <- pnorm(domanda1, muSomma, sigmaSomma, FALSE);

risposta2 <- sigmaQuadratoSomma / ((domanda1-muSomma)^2)

print(risposta1)
print(risposta2)
