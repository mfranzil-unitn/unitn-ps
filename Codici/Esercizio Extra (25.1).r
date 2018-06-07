#Dati

intervallo1 <- 1.74
intervallo2 <- 3.2
singoletto <- 13.33

denominatore <- 2.3216

domanda1 <- 1.92

domanda2_a <- 1.92
domanda2_b <- 2.06
domanda2_c <- 1.74
domanda2_d <- 3.2

domanda3_a <- 2.06
domanda3_b <- 2.1
domanda3_c <- 1.74
domanda3_d <- 1.92

#Svolgimento

EPSILON <- 0.001

f <- function(x) {
  ifelse(x < intervallo1, 0,
         ifelse(x >= intervallo1 && x < intervallo2, ((x - intervallo1)^2)/denominatore,
                ifelse(x >= intervallo2 && x < singoletto, 0.81,
                      ifelse(x >= singoletto, 1, NaN))))
}

f_calc <- function(x) {
  (x - intervallo1)^2/denominatore
}

par(bg = "black", fg = "White")
plot.new()
par(new = TRUE)
plot(Vectorize(f), xlab = "x", from = intervallo1-1, to = singoletto+1,
     type = "l", ylab = "F(x)", col = "Yellow2",
     col.axis = "white", col.lab = "white", lwd = 2)

for(i in seq(0, 1, 0.5)) {
  abline(h = i, lty="dotted", col = "Gray")
}

for(i in seq(0, singoletto+2, 0.5)) {
  abline(v = i, lty="dotted", col = "Gray")
}

domanda2 <- (f(domanda2_b)- f(domanda2_a))/(f(domanda2_d)-f(domanda2_c))

print(f(domanda1)-f(domanda1), digits=22)
print(domanda2, digits=22)
print(f(domanda3_b)-f(domanda3_a) + f(domanda3_d)- f(domanda3_c), digits=22)