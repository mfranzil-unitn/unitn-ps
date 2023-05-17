library(MASS);

intervallo1 <- c(0,9)
intervallo2 <- c(9,16)

k_coeffs <- c(1, -1/7);

domanda3 <- 9

k <- 1
density1 <- function(x){
  
  k*k_coeffs[1]
  
}

density2 <- function(x){
  
  k*k_coeffs[2]*(x-intervallo2[2]);
  
}

ass1 <- function(x){
  
  x*k*k_coeffs[1];
  
}

ass2 <- function(x){
  
  x*k*k_coeffs[2]*(x-16)
  
}

integral1 <- integrate(Vectorize(density1), lower = intervallo1[1], upper = intervallo1[2])
integral2 <- integrate(Vectorize(density2), lower = intervallo2[1], upper = intervallo2[2])
integral <- integral1$value + integral2$value;
risposta1 <- 1/integral
print(fractions(risposta1));

k <- risposta1

integral1 <- integrate(Vectorize(ass1), lower = intervallo1[1], upper = intervallo1[2])
integral2 <- integrate(Vectorize(ass2), lower = intervallo2[1], upper = intervallo2[2])
integral <- integral1$value + integral2$value;

print(integral);

risposta3 <- 0
if( domanda3 >= intervallo1[1] && domanda3 <= intervallo2[2] ){
  if( intervallo1[1] <= domanda3 && domanda3 < intervallo1[2] ){
    integral <- integrate(Vectorize(density1), lower = intervallo1[1], upper= domanda3)
    integral <- integral$value
  } else{
    integral1 <- integrate(Vectorize(density1), lower = intervallo1[1], upper = intervallo1[2])
    integral2 <- integrate(Vectorize(density2), lower = intervallo2[1], upper = domanda3)
    integral <- integral1$value + integral2$value
  }
  risposta3 <- 1 - (integral);
}

print(risposta3)