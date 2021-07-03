x1 <- 18.91
x2 <- 22.81

prMinore <- 6/100
prMaggiore <- 7/100

pr2C <- 1-prMaggiore

pr3 <- 10/100

x4 <- 4.64

q1 <- qnorm(prMinore)
q2 <- qnorm(pr2C)

mu <- ((-q2*x1)/q1 + x2)/(1-q2/q1);

sigma <- (x1-mu)/q1;

risposta4 <- pnorm(x4^2, mu, sigma);

print(mu)

print(sigma);

q1 <- qnorm(1-pr3);

risposta3 <- (x2 - mu)/q1

print(risposta3)

print(risposta4)
