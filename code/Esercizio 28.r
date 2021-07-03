valoreX <- 5
alfa <- 0.0081

domanda2_1 <- 9
domanda2_2 <- 5

teta <- 1 - sqrt(alfa)

prX <- function(x){

  if( x >= 1 ){

    return(teta*(1-teta)^(x-1))

  } else{

    return(0)

  }

}

print(teta)

prIntersezione <- 0

for( i in domanda2_2:domanda2_1 ){

  prIntersezione <- prIntersezione + prX(i)

}


prCondizionante <- 1

for( i in 1:(domanda2_2-1) ){

  prCondizionante <- prCondizionante - prX(i)

}

print(prIntersezione/prCondizionante)
print(prIntersezione/alfa)
