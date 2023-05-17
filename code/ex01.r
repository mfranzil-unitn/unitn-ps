options(warn=-1)
omega <- seq(1, 10, 1)
not <- function(x) { setdiff(omega, x)}
symm <- function(x, y) { union(setdiff(x, y),setdiff(y, x))}
cat("Primo esercizio: ")
sort(intersect(not(B),not(intersect(A, C))))
cat(setequal(length(.Last.value),0))
cat("\nSecondo esercizio: TRUE\nTerzo esercizio: ")
temp = sort(symm(union(union(A, B), C), not(omega)))
cat(setequal(length(setdiff(omega, temp)),0))
cat("\nQuarto esercizio: ")
not(symm(symm(A, B), C))
cat(setequal(.Last.value,((intersect(intersect(A, B), C)))))
options(warn=0)