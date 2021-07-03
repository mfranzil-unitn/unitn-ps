1+1
x <- c(1,3,4,5,6)
x
print(x)
x*3
x+6
x/2
x^4
y <- seq(1:length(x))
x%*%y
drop(x%*%y)
z <- runif(100)
str(z)  
head(z)
tail(z)  
Z <- matrix(z, nrow=5, byrow=FALSE)
dim(Z)  
str(Z)  
x%*%Z
drop(x%*%Z)
x[2:3]
x[c(2:3,5)]
Z[,1]
Z[,2:3]
Z[1:2,2:4]
ps <- function(x, a=1) a*x^2
ps(2)
ps(5)
ps(4, 3)
ps <- function(x, a=1) {
  z <- a*x^2                
  return(z)
}
ps(5)
ps(4, 3)
ps <- function(x, a=1) { z <- a*x^2; z }
ps(x=x, a=3)
ps(x=3, a=x)     
ps <- function(x, a=1) {
  if (a >= 0) {
    z <- a*x^2
  } else {
    z <- a*x^3
  }
  return(z)
}
ps(4, 2)
ps(4, -2)
ps <- function(x, a=1) {
  z <- ifelse (a >= 0, a*x^2,  a*x^3)
  return(z)
}
ps(x, a=-2)
ps(x, a=2)     
ps(x, a=c(-2, 2))     

genere <- sample(c("M", "F"), size=170, replace=TRUE)
str(genere)
altezza <- rnorm(170, 170, 1)
str(altezza)
hist(altezza)
hist(altezza, xlab="Altezza (cm)", ylab="Frequenza", main="La vostra altezza")  
boxplot(altezza)            
table(genere)
boxplot(split(altezza, genere))
    
  