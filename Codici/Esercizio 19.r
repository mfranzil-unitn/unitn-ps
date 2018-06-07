# Dati


lambda <- 0.634
primo_1 <- 0.084 # (primo_1, primo_2]
primo_2 <- 3.937
secondo_1 <- -0.168 # [primo_1, primo_2)
secondo_2 <- 0.168
terzo <- 1.292 # Singoletto
quarto <- 0.752 # Valore di q affinché sia P(x) = ] -Inf, q]

# Svolgimento
#
#

library(MASS)
plot.new()

f <- function(x) {
  ifelse(x>=0, 1- (exp(1)^((-1)*lambda*x)), 0)
}


f_inverse <- function(x) {
  log(1-x)/((-1)*lambda)
}

plot(f, from = -2, to = 9, type="l", xlab = "x",
     ylab = "F(x)", col = "Blue4", bg = "transparent", lwd = 2)

for(i in -2:9) {
  abline(v = i, lty="dotted", col = "Gray")
}

for(i in 0:1) {
  abline(h = i, lty="dotted", col = "Gray")
}

cat("Risultati in frazione: \n")
print(fractions(f(primo_2)-f(primo_1)))
print(fractions(f(secondo_2)-f(secondo_1)))
print(fractions(f(terzo)-f(terzo)))
print(fractions(f_inverse(quarto)))
cat("\n\nRisultati in decimali approssimati: \n")
print(f(primo_2)-f(primo_1))
print(f(secondo_2)-f(secondo_1))
print(f(terzo)-f(terzo))
print(f_inverse(quarto))
cat("\n\nRisultati in decimali approssimati a 22 cifre decimali: \n")
print(f(primo_2)-f(primo_1), digits=22)
print(f(secondo_2)-f(secondo_1), digits=22)
print(f(terzo)-f(terzo), digits=22)
print(f_inverse(quarto), digits=22)