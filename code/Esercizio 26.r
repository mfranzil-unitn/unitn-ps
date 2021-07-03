# Dati

X <- c(-6, -5, -3, 3, 5, 6)
domanda2 <- 2.7725887


# Esercizio
library(MASS)

k_finder <- function(k) {
  k*(X[1]^2 + X[2]^2 + X[3]^2 + X[4]^2 + X[5]^2 + X[6]^2) -1 
}

k <- fractions(uniroot(k_finder, c(0, 1))$root)
pX <- c(X[1]^2, X[2]^2, X[3]^2, X[4]^2, X[5]^2, X[6]^2)
pX <- pX * k

y_finder <- function(y) {
  log(y^2)
}

Y_original <- y_finder(X)
Y <- Y_original[4:6]

pY <- c(2*pX[4], 2*pX[5], 2*pX[6])

atteso <- 0
varianza_tmp <- 0
for(i in 1:3) { # Infine calcolo valore atteso e varianza
  atteso <- atteso + Y[i]*pY[i]
}

for(i in 1:3) {
  varianza_tmp <- varianza_tmp + (Y[i]^2)*pY[i]
}

varianza <- varianza_tmp-(atteso^2)


cat("Domanda 1: Valore di k\n")
print(k)
cat("Tabelle delle probabilità\n")
print(X)
print(pX)
cat("\nDomanda 2: Valori della variabile aleaoria Y\n")
print(Y)
print(fractions(pY))
cat("Valore della f di probabilità nella x richiesta\n")
for(i in 1:length(Y)) {
  if (abs(Y[i] - domanda2) < 0.0001)
    print(fractions(pY[i]))
}
cat("\nDomanda 3: Valore atteso\n")
print(atteso)
cat("\nDomanda 4: Varianza\n")
print(varianza)

