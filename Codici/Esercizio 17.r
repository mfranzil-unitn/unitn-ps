library(MASS)

bianche <- 12
nere <- 12
total <- bianche + nere

testa <- 0.5
croce <- 0.5

estratte_testa <- 4
estratte_croce <- 3
estratte_total <- estratte_croce + estratte_testa

# Esercizio 1: tutte bianche:
tuttebianche_t <- fractions(choose(bianche,estratte_testa)/choose(total,estratte_testa))
tuttebianche_c <- fractions(choose(bianche,estratte_croce)/choose(total,estratte_croce))
tuttebianche <- testa*tuttebianche_t+tuttebianche_c*croce

print(tuttebianche)

#Esercizio 2: X bianche, le altre nere
bianche_2 <- 2

xbianche_t <- fractions((choose(bianche, bianche_2)*choose(nere, (estratte_testa-bianche_2)))/choose(total,estratte_testa))
xbianche_c <- fractions((choose(bianche, bianche_2)*choose(nere, (estratte_croce-bianche_2)))/choose(total,estratte_croce))
xbianche <- xbianche_t*testa + xbianche_c*croce

print(xbianche)

#Esercizio 3: tutte dello stesso colore <-> tuttebianche unito a tuttenere
tuttenere_t <- fractions(choose(nere,estratte_testa)/choose(total,estratte_testa))
tuttenere_c <- fractions(choose(nere,estratte_croce)/choose(total,estratte_croce))
tuttenere <- testa*tuttenere_t+tuttenere_c*croce

print(tuttenere+tuttebianche)

#Esercizio 4: sapendo che è successo il (3) probabilità di tuttebianche
domanda4 <- tuttebianche/(tuttenere+tuttebianche)

print(domanda4)