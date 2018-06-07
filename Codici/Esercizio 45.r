## Dati

rigasopra <- c(-2.22, -0.53, 0.81)
rigaverticale <- c(-4.1, -1.46, -0.16)

prob <- c(7,4,5,
                 8,3,9,
                 6,2,1)

library(MASS)

k <- fractions(1/sum(prob))
marginale_x <-c((prob[1]+prob[2]+prob[3])*k,
                (prob[4]+prob[5]+prob[6])*k,
                (prob[7]+prob[8]+prob[9])*k)

marginale_y <-c((prob[1]+prob[4]+prob[7])*k,
                (prob[2]+prob[5]+prob[8])*k,
                (prob[3]+prob[6]+prob[9])*k)

atteso_x <- sum(marginale_x *rigaverticale)

varianza_y <- sum(marginale_y * (rigasopra)^2) - sum(marginale_y * (rigasopra))^2

print(k)
print(marginale_x)
print(marginale_y)
print(atteso_x)
print(varianza_y)
