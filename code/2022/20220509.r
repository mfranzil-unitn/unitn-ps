cat("Punto 1.\n")

# Mi salvo le p_n in una matrice così le riciclo dopo
# Ricordati che p_n è come se fosse la sommatoria di p(d)p(n|d) sui vari d
# Matrice
m <- matrix(0, nrow=7, ncol=7)
e <- 0
n <- 0
d <- 0

for (n in 0:6) {
    for (d in max(n,1):6) {
        # cat("Sommo p(d)p(n|d) per d=", d, " e n=", n, "\n")
        m[n + 1, d + 1] <- 1/6 * dbinom(n, d, 0.459) # fanculo su R inizia tutto da 1
    }
    p_n <- sum(m[n + 1,])
    # cat("E", e, "\n")
    # cat("n=", n, "\n")
    # cat("p_n=", p_n, "\n")
    e <- e + n * p_n
}

cat("Punto 3.\n")
# Ricordati che p_d__n1 è P(D|N=1) che serve nel calcolo della media
n <- 1
p_d__n1 <- 0
for (d in 0:6) {
    p_d__n1 <- p_d__n1 + d * m[n + 1, d + 1]/sum(m[n + 1,])
}
cat("p_d__n1=", p_d__n1, "\n")




