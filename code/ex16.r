library(MASS)

media_difettosi <- 0.20
bulloni_estratti <- 14

media_difettosi_c <- 1 - media_difettosi

# Domanda 1: x bulloni difettosi
#DATI:

difettosi <- 6

#PROCEDIMENTO:

difettosi_c <- bulloni_estratti - difettosi
print(fractions(choose(bulloni_estratti,difettosi) * (media_difettosi^difettosi) * (media_difettosi_c^difettosi_c)))

#Domanda 2: x o più bulloni difettosi
#DATI:

difettosi <- 6

#PROCEDIMENTO:

temp <- 0
for(i in seq(difettosi, bulloni_estratti, 1)) {
  temp <- temp + choose(bulloni_estratti, i) * (media_difettosi^i) * (media_difettosi_c^(bulloni_estratti-i))
}
print(fractions(temp))

#Domanda 3: più di x bulloni difettosi <- x+1 o più bulloni difettosi
#DATI:

difettosi <- 7

#PROCEDIMENTO:

difettosi <- difettosi+1
temp <- 0
for(i in seq(difettosi, bulloni_estratti, 1)) {
  temp <- temp + choose(bulloni_estratti, i) * (media_difettosi^i) * (media_difettosi_c^(bulloni_estratti-i))
}
print(fractions(temp))