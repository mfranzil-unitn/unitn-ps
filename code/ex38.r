library(MASS)

# DATI: --------------------------------------------------------------------------------------
a = 7   #ci� che moltiplica x
b = -8  #ci� che moltiplica Kx^3

fx = function(x){
  return (a*x - b*K*x^3)
}

# ESERCIZIO 1 --------------------------------------------------------------------------------
K = ((1 - a/2) / b) * 4

# ESERCIZIO 2 --------------------------------------------------------------------------------
bK = b*K
att = a/3 + bK/5  # valore atteso

# ESERCIZIO 3 --------------------------------------------------------------------------------
var = a/4 - 2*(a/3)*att + (a/2)*att^2 + bK/6 - 2*(bK/5)*att + (bK/4)*att^2

# STAMPE -------------------------------------------------------------------------------------
print(K)
print(att)
print(var)

# STAMPE FRAZIONI ----------------------------------------------------------------------------
print(fractions(K))
print(fractions(att))
print(fractions(var))