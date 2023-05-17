# n variabile aleatoria che rappresenta il numero di lanci
# di un dado a 8 facce finché non esce 8 (bin. negativa)

# x variabile che conta quante volte è uscita 1 (binomiale)

# E[X|N=5] = sommatoria di x che

facce <- 8

e_1 <- 0
n_1 <- 5
p <- 1 / facce

for (i in 0:(n_1 - 1)) {
    # p_i <- P(x|N=5)
    # P(1|N=5) = (5 1) * (1/8)^1 * (7/8)^4
    p_i <- dbinom(i, n_1, p)
    e_1 <- e_1 + i * p_i
}

cat("E(X|N=5) = ", e_1)
# esce 0.6248474
e_2 <- 0
for (i in 0:(n_1 - 1)) {
    p_i <- dbinom(i, n_1, p)
    e_2 <- e_2 + i^2 * p_i
}

cat("E(X^2|N=5) = ", e_2)
# esce 0.9367371

# è sbagliata ma non so cosa fare
quesito3 <- function(x) {
    x <- ifelse(is.numeric(x), x, -1)
    x <- ifelse(x <= 0, 0, x)
    e_x <- 0
    for (i in 0:x) {
        p_i <- dbinom(i, x, p)
        e_x <- e_x + i * p_i
    }
    return(e_x)
}
