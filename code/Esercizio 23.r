library(MASS)

r <- 0.498
python <- 1-r

python_compila <- 0.825
r_compila <- 0.853

esercizi <- 4
linguaggi <- 3
studenti <- 130

a <- python*python_compila +  r*r_compila
python_a <- python*python_compila/a

f_1 <- function(x) {
    factorial(x)/factorial(x-esercizi) - (studenti*factorial(esercizi)/(esercizi^linguaggi))
}

print(fractions(a))
print(fractions(python_a))
print(ceiling(uniroot(f_1, c(esercizi, 100))$root))