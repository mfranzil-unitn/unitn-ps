library(MASS)

p_h <- 0.97
h <- 6/(10^5)
p_hc <- 0.0009

hc <- 1 - h
pc_hc <- 1 - p_hc

p <- p_hc*hc + p_h*h
print(fractions(p))

h_p <- (p_h*h)/p
print(fractions(h_p))

# Parte 3

m_h <- 0.962
m_hc <- 0.527

f_h <- 1 - m_h
f_hc <- 1 - m_hc

p.m_h <- p_h*m_h
p.f_h <- p_h*f_h

h_p.m <- (p_h*m_h*h)/(p_h*m_h*h + p_hc*m_hc*hc)
h_p.f <- (p_h*f_h*h)/(p_h*f_h*h + p_hc*f_hc*hc)

print(fractions(h_p.m))
print(fractions(h_p.f))