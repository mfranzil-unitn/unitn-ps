M <- 1
F <- 4

M_tot <- 4
F_tot <- 6

Es1 <- choose(M_tot, M) * choose(F_tot, F)
Es2 <- choose(M_tot, M) * choose(F_tot - 1, F - 1)
Es3 <- choose(M_tot - 2, M) * choose(F_tot, F)
print(Es1)
print(Es2)
print(Es3)