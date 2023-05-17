theta <- 4 / 11

error <- 0.98
alpha <- 1 - error

inverse <- 1 - (alpha / 2)

# Consulto il formulario oppure uso qnorm

z <- qnorm(inverse)

estremo_superiore <- theta + z * sqrt(theta * (1 - theta) / 12)
estremo_inferiore <- theta - z * sqrt(theta * (1 - theta) / 12)

cat("Estremo inferiore: ", estremo_inferiore, "\n")
cat("Estremo superiore: ", estremo_superiore, "\n")