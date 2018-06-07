#Data

x1 <- 4
x2 <- 9
x3 <- 10

expected <- 8.609
variance <- 3.869


#install.packages("pracma", repos="http://R-Forge.R-project.org")
library(pracma)

data <- c(x1,x2,x3)

momento <- function(x, y, r, centrato = FALSE) {
  res <- 0
  
  if(length(x) != length(y) || r < 0 || r %% 1 != 0 ) {
    res <- NaN
  }
  
  if(centrato == FALSE) {
    for(i in 1:length(x)) {
      res <- res + x[i]^r*y[i]
    }
  } else {
    res <- ifelse(r == 1, 0, 
             ifelse(r == 2, momento(x, y, 2)-(momento(x, y, 1)^2), 
               ifelse(r == 3, momento(x, y, 3) - momento(x, y, 1)^3 - 
                              3*momento(x, y, 1)*momento(x, y, 2, centrato = TRUE),
                  res <- NaN)))
  }
  return(res)
}

mat_original <- matrix(c(data[1], data[2], data[3], expected,
                       data[1]^2, data[2]^2, data[3]^2, variance+expected^2,
                       1, 1, 1, 1), byrow = TRUE, nrow = 3, ncol = 4)

mat <- rref(mat_original)
prob <- c(mat[10],mat[11],mat[12])

print(matrix(c(data[1], data[2], data[3], prob[1], prob[2], prob[3]),
             byrow = TRUE, nrow = 2, ncol = 3))

mnnoncentrato3 <- momento(data, prob, 3)
mncentrato3 <- momento(data, prob, 3, centrato = TRUE)

print(mnnoncentrato3)
print(mncentrato3)