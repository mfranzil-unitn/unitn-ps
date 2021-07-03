x_values <- c(9,11,15)

y_values <- c(-15,-8,2,8)

prxs <- c(0.38, 0.29, 0.33)

prys <- c()

prCongiunta <- c()

pry_x <- c(0.25, 0.30, 0.20, 0.25,
           0.22, 0.27, 0.25, 0.26,
           0.20, 0.30, 0.23, 0.27)

matrixy_x <- matrix(data = pry_x, ncol = length(y_values), nrow = length(x_values), byrow = TRUE);


valoreAttesoX <- 0

for( i in 1:length(x_values) ){

  valoreAttesoX <- valoreAttesoX + prxs[i] * x_values[i];

}


varianzaX <- 0

for( i in 1:length(x_values) ){

  varianzaX <- varianzaX + prxs[i] * (x_values[i] - valoreAttesoX)^2;

}


for( i in 1:length(x_values) ){

  for( j in 1:length(y_values) ){

    prCongiunta <- c(prCongiunta, matrixy_x[i,j] * prxs[i]);

  }

}


matrixCongiunta <- matrix(data = prCongiunta, nrow = length(x_values), ncol = length(y_values), byrow = TRUE);

for( i in 1:length(y_values) ){

  prys <- c(prys, sum(matrixCongiunta[,i]));

}

prx_y <- c()

for( i in 1:length(x_values)){

  for( j in 1:length(y_values)){
    prx_y <- c(prx_y, matrixCongiunta[i,j] / prys[j] )
  }

}

matrixx_y <- matrix(data=prx_y, nrow = length(x_values), ncol = length(y_values), byrow = TRUE);

valoreAttesoX_Y <- c();

for( j in 1:length(y_values) ){

  somma <- 0
  for( i in 1:length(x_values) ){

    somma <- somma + x_values[i] * matrixx_y[i,j];

  }

  valoreAttesoX_Y <- c(valoreAttesoX_Y, somma);

}


varianzaValoreAttesoX_Y <- 0

for( j in 1:length(y_values) ){

  varianzaValoreAttesoX_Y <- varianzaValoreAttesoX_Y + (valoreAttesoX_Y[j] - valoreAttesoX)^2 * prys[j];

}

valoreAttesoVarianzaX_Y <- varianzaX - varianzaValoreAttesoX_Y;

cat("X\n")
print(matrix(data=c(x_values,prxs), ncol = length(x_values), byrow = TRUE))

cat("\nY\n")
print(matrix(data=c(y_values,prys), ncol = length(y_values), byrow = TRUE))

cat("\nProbabilita congiunta\n")
print(matrixCongiunta)

cat("\nX|Y\n")
print(matrixx_y)

cat("\nY|x\n")
print(matrixy_x)

cat("\nRisposte\n")
print(valoreAttesoX);
print(varianzaX)
print(varianzaValoreAttesoX_Y)
print(valoreAttesoVarianzaX_Y)
