# RICHIESTE?
prima_1 <- 3.178
prima_2 <- 6.39
seconda_1 <- 1.58
seconda_2 <- 3.178
terza <- 0.1011

regions <- c(-20, -1.615, -0.017, 1.58, 3.178, 4.775, 6.373, 7.97, 20)
f_values <- c(0, 0.1011, 0.3832, 0.7112, 0.9148, 0.9858, 0.999, 1)

# PROGRAMMA PRINCIPALE
#
#
plot.new()
EPSILON <- 0.001
x <- seq(-3, 9, by = EPSILON)

groups <- cut(x, regions)
fx <- f_values[groups]

par(new=TRUE)
plot(fx, x = x, type="l", xlab = "x", ylab = "F(x)", cex = EPSILON, col = "Blue4", bg = "transparent")

for(i in 2:length(regions)) {
  abline(v = regions[i], lty="dotted", col = "Gray")
  # abline(h = f_values[i], lty="dashed", col = "azure2")
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
                ifelse(x >= regions[8], f_values[8], NaN))))))))
}

# f_minus <- function(x) {
#   ifelse(x <= regions[2], f_values[1],
#     ifelse(x > regions[2] && x <= regions[3], f_values[2],
#       ifelse(x > regions[3] && x <= regions[4], f_values[3],
#         ifelse(x > regions[4] && x <= regions[5], f_values[4],
#           ifelse(x > regions[5] && x <= regions[6], f_values[5],
#             ifelse(x > regions[6] && x <= regions[7], f_values[6],
#               ifelse(x > regions[7] && x <=  regions[8], f_values[7],
#                  ifelse(x > regions[8], f_values[8], NaN))))))))
# }

f_minus <- function(x) {
  f(x - EPSILON)
}


print(f(prima_2)-f(prima_1))
print(f_minus(seconda_2)-f_minus(seconda_1))

for(i in 2:length(f_values)) {
  if(abs((f_values[i]-f_values[i-1]) - terza) < EPSILON)
    print(regions[i])
}
