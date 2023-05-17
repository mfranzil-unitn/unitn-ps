valoreAtteso <- 2.81

n <- 5

domanda1 <- 4

domanda2 <- 4

risposta1 <- 1 - (ppois(domanda1, valoreAtteso) ^ n);

risposta2 <- 1- ppois(domanda2*n, valoreAtteso*n);

print(risposta1)

print(risposta2)