prData <- 0.0081
domanda1 <- 5
domanda2_1 <- 9;
domanda2_2 <- 5;

p <- 1;

pr <- function(p){

  somma <- 0;
  for( i in 1:(domanda1-1) ){

    somma <- somma + p*(1-p)^(i-1);

  }
  return(somma);

}

f <- function(x){

  1 - prData - (pr(x));

}

prX <- function(x){

    p*(1-p)^(x-1);

}

p <- round(uniroot(f, c(0,1), extendInt="yes")$root, digits = 3);

print(p);

somma <- 0;

for( i in domanda2_2:domanda2_1 ){

    somma <- somma + prX(i);

}

prCondizionante <- 1;

for( i in 1:(domanda2_2-1) ){

  prCondizionante <- prCondizionante - prX(i);

}

risposta2 <- somma/prCondizionante;
risposta2_1 <- somma/prData;

print(risposta2)
print(risposta2_1)
