library(MASS)

d <- fractions(4/31)
dc <- 1 - d

dc_dc <- dc^2
d_d <- d^2
d_dc <- 1-(d_d+dc_dc)

d_dc_dc <- d_dc*dc

g <- dc_dc + d_dc_dc
  
d_dc_dc_g <- d_dc_dc/g

print(g)
print(d_dc_dc_g)N