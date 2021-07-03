#Dati
x_1 <- 7
x_2 <- 8

domanda2_a <- 
domanda2_b <- 

domanda3_a <- 
domanda3_b <- 

#Svolgimento

INIZIO <- 0
FINE <- 20
SEQUENCE <- 1

lambda_finder <- function(x) {
  (x^x_1/x^x_2) * (factorial(x_2)/factorial(x_1)) - 1
}

lambda <- print(round(uniroot(lambda_finder, c(x_1-1, x_2+1))$root))
d <- dpois(INIZIO:FINE, lambda=lambda, log=FALSE)
p <- ppois(INIZIO:FINE, lambda=lambda, log = FALSE)

d_f <- function(x) {
  d[x+1]
}

p_f <- function(x) {
  p[x+1]
}

####### INIZIO GRAFICI (2) #######
par(bg = "black", fg = "White")
plot.new()
par(new = TRUE)
plot(d_f,  xlab = "x", ylab = "y", col.axis = "white", col.lab = "white", type="s", col = "yellow4",
     lwd = 0, xlim = c(INIZIO, FINE), ylim = c(0,1.2))


for(i in INIZIO:FINE) { 
  points(i, d[i+1], col = "Yellow", bg = "Yellow", pch = 21, cex = 1.1)
}

for(i in seq(0, 1, SEQUENCE)) {
  abline(h = i, lty="dotted", col = rgb(1,1,1,alpha=0.5))
}

for(i in seq(INIZIO, FINE, SEQUENCE)) {
  abline(v = i, lty="dotted", col = rgb(1,1,1,alpha=0.5))
}

##### INIZIO GRAFICO 1 #########
par(bg = "black", fg = "White")
plot.new()
par(new = TRUE)
plot(p_f,  xlab = "x", ylab = "y", col.axis = "white", col.lab = "white", type="s", col = "green4",
     lwd = 0, xlim = c(INIZIO, FINE), ylim = c(0,1.2))

for(i in INIZIO:FINE) { 
  points(i, p[i+1], col = "Green", bg = "Green", pch = 21, cex = 1.1)
}

p_round <- round(p, digits=4)

text(x = INIZIO:(FINE-1), y = p[(INIZIO+1):(FINE)],
     labels = p_round[(INIZIO+1):(FINE)], cex= 1, pos=1, offset = -1.8, srt = 90)


for(i in seq(0, 1, SEQUENCE)) {
  abline(h = i, lty="dotted", col = rgb(1,1,1,alpha=0.5))
}

for(i in seq(INIZIO, FINE, SEQUENCE)) {
  abline(v = i, lty="dotted", col = rgb(1,1,1,alpha=0.5))
}

##### FINE GRAFICI ########

domanda2 <- sum(d_f(seq(domanda2_b, domanda2_a))) / (1-p_f(domanda2_b - 1))
atteso <- domanda3_a+domanda3_b*lambda
varianza <- (domanda3_b^2)*lambda

print(domanda2, digits=22)
print(atteso, digits=22)
print(varianza, digits=22)

rm(domanda2_a, domanda2_b, domanda3_a, domanda3_b, i, p_round,
   SEQUENCE, FINE, INIZIO, d_f, p_f, lambda_finder, x_1, x_2)
