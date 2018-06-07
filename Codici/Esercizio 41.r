mean mean<- 15.28
var <- 9.07

domanda1_a <- 13.92
domanda1_b <- 16.19
domanda2 <- 10.87
domanda3 <- 12.85



sd <- sqrt(var)
x <- seq(mean-5, mean+5, length.out = 100)

risposta1 <- pnorm(mean = mean, sd = sd, q = c(domanda1_a,domanda1_b))
risposta2 <- pnorm(mean = mean, sd = sd, q = domanda2)
risposta3 <- c(pnorm(mean = mean, sd = sd, q = -domanda3),
               pnorm(mean = mean, sd = sd, q = domanda3))


plot(x, dnorm(mean = mean, sd = sd, x = x), type="l")
print(risposta1[2]-risposta1[1])
print(risposta2)
print( risposta3[1] + (1-risposta3[2]))