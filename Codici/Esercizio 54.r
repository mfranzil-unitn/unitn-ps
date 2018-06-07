coeff_sigma <- 7/100

prRichiesta <- 93/100

ordineQuantile <- (prRichiesta + 1)/2

q <- qnorm(ordineQuantile)

n <- ceiling((q/coeff_sigma)^2)

cat("Soluz.\n")
print(n)


cat("ATTENZ: Abbiamo vinto, andiamo al mare\n")
cat("TAAAAAAAAC ------------ \n")
cat("SIIIIII ABBIAMO FINITOOOOOO :)\n")
