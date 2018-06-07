#Dati

omega1 <- 8.34
omega2 <- 11.22
denominatore <- 8.2944

domanda1 <- 10.646
domanda2_a <- 9.93
domanda2_b <- 10.61
domanda3 <- 11.09

#Svolgimento

EPSILON <- 0.001

f <- function(x) {
  ifelse(x < omega1, 0,
    ifelse(x >= omega1 && x < omega2, (x - omega1)^2/denominatore,
      ifelse(x >= omega2, 1, NaN)))
}

f_calc <- function(x) {
  (x - omega1)^2/denominatore
}

par(bg = "black", fg = "White")
plot.new()
par(new = TRUE)
plot(Vectorize(f), xlab = "x", from = omega1-1, to = omega2+1,
     type = "l", ylab = "F(x)", col = "Yellow2",
     col.axis = "white", col.lab = "white", lwd = 2)

#for(i in 2:(length(regions)-1)) { # Generazione di linee e punti del grafico
  # abline(v = regions[i], lty="dotted", col = "Gray")
  # abline(h = f_values[i], lty="dashed", col = "azure2") <- se qualcuno volesse le linee verticali
  # points(regions[i], f_values[i], col = "Blue4", bg = "Blue4", pch = 21, cex = 0.8)
  # points(regions[i], f_values[i-1], col = "Blue4", pch = 21, cex = 0.8)
#}
# for(i in floor(omega1-1):floor(omega2+2)) {
#   abline(v = i, lty="dotted", col = "Gray")
# }

for(i in seq(0, 1, 0.5)) {
  abline(h = i, lty="dotted", col = "Gray")
}

for(i in seq(6, 31, 0.5)) {
  abline(v = i, lty="dotted", col = "Gray")
}

print(f(domanda1), digits=22)
print(f(domanda2_b)-f(domanda2_a), digits=22)
print(f(domanda3)-f(-domanda3), digits=22)