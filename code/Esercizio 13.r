library(MASS)

f <- function(n) {
  factorial(n)
}

dispn <- function(n, m) {
  f(n)/f(n-m)
}

stirling <- function(n) {
  n*log(n) - n + (1/2)*log(2*pi*n)
}


# ESERCIZIO 1

white <- 4
red <- 3
green <- 4

# formule

permutazioni_es1 <- f(white+red+green)/(f(white)*(f(green)*(f(red))))

print(permutazioni_es1)
                                                              
# ESERCIZIO 2
consonanti <- 9
vocali <- 5

consonanti_parola <- 6
vocali_parola <- 4

# formule

disp_cons <- choose(consonanti, consonanti_parola)
disp_voca <- choose(vocali, vocali_parola)
permutazioni_es2 <- f(consonanti_parola+vocali_parola)
parole <- disp_cons * disp_voca * permutazioni_es2
parole_log <- log(parole)
print(parole_log)

# ESERCIZIO 3
n_terzo <- 1548
print(stirling(n_terzo), digits=22)
