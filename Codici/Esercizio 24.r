# RICHIESTE
prima_1 <- 9.999
prima_2 <- 13.328
seconda_1 <- 6.001
seconda_2 <- 8.999
terza <- 5.176

regions <- c(1, 6, 9, 10, 11.382, 13.329, 15.348, 18)
values <- c(0.004, 0.167, 0.168, 0.093, 0.161, 0.155, 0.109, 0.143)




# PROGRAMMA PRINCIPALE
#
#
regions <- c(c(-1), regions, c(30))
values <- c(c(0), values)
plot.new()
EPSILON <- 0.001
f_values <- c(0)

for(i in 2:length(values)) {
  f_values <- cbind(f_values,f_values[i-1] + values[i])
}

x <- seq(0, 20, by = EPSILON)

groups <- cut(x, regions)
fx <- f_values[groups]

par(new=TRUE)
plot(fx, x = x, type="l", xlab = "x", ylab = "F(x)", cex = EPSILON, col = "Blue4", bg = "transparent")

for(i in 2:length(regions)) {
  abline(v = regions[i], lty="dotted", col = "Gray")
  points(regions[i], f_values[i], col = "Blue4", bg = "Blue4", pch = 21, cex = 0.8)
  points(regions[i], f_values[i-1], col = "Blue4", pch = 21, cex = 0.8)
}

f <- function(x) {
  ifelse(x < regions[2], f_values[1],
    ifelse(x >= regions[2] && x < regions[3], f_values[2],
      ifelse(x >= regions[3] && x < regions[4], f_values[3],
        ifelse(x >= regions[4] && x < regions[5], f_values[4],
          ifelse(x >= regions[5] && x < regions[6], f_values[5],
            ifelse(x >= regions[6] && x < regions[7], f_values[6],
               ifelse(x >= regions[7] && x < regions[8], f_values[7],
                  ifelse(x >= regions[8] && x < regions[9], f_values[8],
                    ifelse(x >= regions[9], fvalues[9], NaN)))))))))
}


print(f(prima_2)-f(prima_1))
print(f(seconda_2))
print(1-f(terza))

