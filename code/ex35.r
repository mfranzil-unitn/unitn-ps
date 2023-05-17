a <- -3.36
b <- 3.62
q <- 0.24
d <- -1.56

print((a+b)/2)
print(sqrt((b-a)^2/12))
print(qunif(q, a, b))
bprimo <- (b-((a+b)/2))/(sqrt((b-a)^2/12))
aprimo <- (a-((a+b)/2))/(sqrt((b-a)^2/12))
print(ifelse(d>=aprimo && d<=bprimo, (1/(bprimo-aprimo)),0))
