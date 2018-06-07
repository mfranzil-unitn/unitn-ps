x <- c(-12, 1, 16)
y <- c(-19, -14, -9, 8)

prob.x <- c(0.35, 0.3, 0.35)

prob.y_x <- c(0.2, 0.33, 0.23, 0.17,
              0.25, 0.25, 0.22, 0.28,
              0.23, 0.25, 0.23, 0.29)

parametro_a <- -0.41
parametro_b <- 0.56
parametro_c <- 0.15
parametro_d <- 0.35

mat.y_x <- matrix(data = prob.y_x, ncol = length(y), nrow = length(x), byrow = TRUE);

prob.xy <- c()

for( i in 1:length(x) ){
  
  for( j in 1:length(y) ){
    
    prob.xy <- c(prob.xy, mat.y_x[i,j] * prob.x[i]);
    
  }
  
}

mat.xy <- matrix(data = prob.xy, ncol = length(y), nrow = length(x), byrow = TRUE);

prob.y <- c(sum(mat.xy[1:3,1]),sum(mat.xy[1:3,2]),sum(mat.xy[1:3,3]),sum(mat.xy[1:3,4]))

e.x <- sum(x*prob.x)
e.y <- sum(y*prob.y)

e.xy <- c()
for(i in 1:length(x)) {
  for(j in 1:length(y)) {
    e.xy <- c(e.xy, mat.xy[i,j]*x[i]*y[j])
  }
}
e.xy <- sum(e.xy)
cov <- e.xy - e.x*e.y

cov2 <- cov*parametro_a*parametro_c

var.x <- sum(x^2*prob.x)-e.x^2
var.y <- sum(y^2*prob.y)-e.y^2

ro <- cov/sqrt(var.x*var.y)

sgn.ac <- parametro_a*parametro_c/abs(parametro_a*parametro_c)

cat("X\n")
print(x)
print(prob.x)
cat("\nY\n")
print(y)
print(prob.y)
cat("\nCongiunta\n")
print(mat.xy)
cat("\nE(XY)\n")
print(e.xy)
cat("\nE(X)\n")
print(e.x)
cat("\nE(Y)\n")
print(e.y)
cat("\nCovarianza\n")
print(cov)
cat("\nCovarianza della combinazione lineare\n")
print(cov2)
cat("\nVar(X)\n")
print(var.x)
cat("\nVar(Y)\n")
print(var.y)
cat("\nRo\n")
print(ro)
cat("\nRo della comb. lineare\n")
print(sgn.ac*ro)