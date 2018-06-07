library(MASS)

A <- c('m', 'i', 'p', 's', 'k', 'y')
B <- c('a', 'y', 'o', 'i', 'e', 'f', 'x', 's')

isVocal <- function(x) {
  rval <- 0;
  for ( i in 1:length(x) ) {
     if (x[i] %in% c('a', 'e', 'i', 'o', 'u')) {
      rval <- rval+1
    }
  }
  return(rval)
}

print(fractions( isVocal(A) / length(A) ))
print(fractions( 1 - isVocal(B) / length(B) ))
print(fractions( 1 - isVocal(union(A,B)) / length(union(A,B))))
print((fractions( isVocal(intersect(A,B)) / length(intersect(A,B)))))