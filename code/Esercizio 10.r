library(MASS)

cab <- 0.29
a <- 0.35
b <- 0.45
ca_a <- 0.72

ca_ac <- 0
ca_bc <- 0

# ca_a = (ca * a_ca)/a
# Sappiamo che:

a_ca <- 1
b_cb <- 1

# allora:

ca <- (ca_a*a)/a_ca

# Sappiamo anche che:
# cab = union(ca,cb) = ca + cb - intsersect(ca,cb)
# cab <- ca + cb - ca*cb
# cab <- ca + cb(1- ca)

cb <- (cab - ca)/(1-ca)

cb_b <- cb/b

print(fractions(cb_b))
print(fractions(cb))

cb_intersect_cac <- cb*(1-ca)

print(fractions(cb_intersect_cac))

cab_ca <- 1

# ca_cab <- (cab_ca*ca)/cab
ca_cab <- ca/cab

print(fractions(ca_cab))

