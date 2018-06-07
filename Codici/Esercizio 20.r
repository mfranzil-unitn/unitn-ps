# RICHIESTE?
prima_1 <- 1
prima_2 <- 7
seconda_1 <- -9
seconda_2 <- 9
terza <- 10.876

regions <- c(-40, 1, 2, 4, 7, 9, 40)
values <- c(0, 0.17, 0.09, 0.27, 0.24, 0.23)

# PROGRAMMA PRINCIPALE


# Creo un nuovo plot e setto una costante usata più volte, nonché i valori della 4 e 5 domanda
plot.new()
EPSILON <- 0.0001
quarta <- 0
quinta <- 0
# A partire dalla variabile discreta mi creo la mia funzione di ripartizione
f_values <- c(values[1], values[1]+values[2], values[1]+values[2]+values[3],
  values[1]+values[2]+values[3]+values[4], values[1]+values[2]+values[3]+values[4]+values[5],
   values[1]+values[2]+values[3]+values[4]+values[5]+values[6])


x <- seq(-1, 10, by = EPSILON)
groups <- cut(x, regions)
fx <- f_values[groups]

par(new=TRUE) #Permetto a plot di scrivere sul nuovo plot creato poco prima
plot(fx, x = x, type="l", xlab = "x", ylab = "F(x)", cex = EPSILON, col = "Blue4", bg = "transparent")

for(i in 2:(length(regions)-1)) { # Generazione di linee e punti del grafico
  abline(v = regions[i], lty="dotted", col = "Gray")
  # abline(h = f_values[i], lty="dashed", col = "azure2") <- se qualcuno volesse le linee verticali
  points(regions[i], f_values[i], col = "Blue4", bg = "Blue4", pch = 21, cex = 0.8)
  points(regions[i], f_values[i-1], col = "Blue4", pch = 21, cex = 0.8)
}

f <- function(x) { # Funzione di ripartizione, the lazy way
  ifelse(x < regions[2], f_values[1],
   ifelse(x >= regions[2] && x < regions[3], f_values[2],
    ifelse(x >= regions[3] && x < regions[4], f_values[3],
     ifelse(x >= regions[4] && x < regions[5], f_values[4],
      ifelse(x >= regions[5] && x < regions[6], f_values[5],
       ifelse(x >= regions[6] && x < regions[7], f_values[6],
        ifelse(x >= regions[7] && x < regions[8], f_values[7],
         ifelse(x >= regions[8], f_values[8], NaN))))))))
}

f_minus <- function(x) { # Versione per il limite da sinistra
  f(x - EPSILON)
}

for(i in 2:6) { # Infine calcolo valore atteso e varianza
  quarta <- quarta + regions[i]*values[i]
}

for(i in 2:6) {
  quinta <- quinta + (regions[i]^2)*values[i]
}

variance <- quinta-(quarta^2)

# Stampa dei risultati

print(f(prima_2)-f(prima_1))
print(f_minus(seconda_2)-f_minus(seconda_1))
print(f(terza))
cat("\n\nRisultati della versione precedente: \n")
print(quarta)
print(variance)
