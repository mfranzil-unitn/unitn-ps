# Dati
totale <- 12
monetevincenti <- 4
moneteperdenti <- 8

estratte <- 4

# Y = AX + B(C + DX)
A <- 2
B <- 1
C <- 4
D <- -1

# Domande

domanda1 <- 0
domanda2 <- 5
domanda3_a <- 8
domanda3_b <- 0

# Svolgimento
d_f <- dhyper(m = monetevincenti, n = moneteperdenti, k = estratte, x = c(0:estratte))
p_f <- phyper(m = monetevincenti, n = moneteperdenti, k = estratte, q = c(0:estratte))

prX <- function(k){
  n <- totale
  h <- monetevincenti
  r <- moneteperdenti
  
  if(k >= 0) {
    choose(h,k) * choose(n-h, r-k)/choose(n,r)
  }
  else {
    0
  }
}

primadomanda <- 1
if (domanda1 != 0) {
  for(i in 0:(domanda1 - 1)){
    primadomanda <- primadomanda - prX(i)
  }
}

y <- function(x) {
  (B*D+A)*x + B*C
}

y_invert <- function(y) {
  (y - B*C)/(A + B*D)
}

y_list <- sort(c(y(0:estratte)))
secondadomanda <- d_f[y_invert(y_list[domanda2])+1]

TRENTA <- 30

if(domanda3_a <= y_list[estratte+1]) {
  d3_primointervallo <- seq(y_invert(domanda3_a), TRENTA)
} else {
  d3_primointervallo <- seq(-TRENTA, y_invert(domanda3_a))
}

if(domanda3_b <= y_list[estratte+1]) {
  d3_secondointervallo <- seq(domanda3_b, TRENTA)
} else {
  d3_secondointervallo <- seq(-TRENTA, domanda3_b)
}

tmp <- intersect(d3_primointervallo, d3_secondointervallo)+1
tmp <- tmp[!is.na(tmp)]
if (length(tmp) > 1) {
  numeratore <- d_f[tmp]
  numeratore <- numeratore[!is.na(numeratore)]
  denominatore <- d_f[d3_secondointervallo+1]
  denominatore <- denominatore[!is.na(denominatore)]
  terzadomanda <- sum(numeratore)/sum(denominatore)
} else {
  terzadomanda <- p_f[tmp]/sum(d_f[d3_secondointervallo+1])
}

if(length(terzadomanda) == 0) {
  terzadomanda <- 0
}

# Output
print(primadomanda)
print(secondadomanda)
print(terzadomanda)
