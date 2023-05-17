
theta <- 0
max <- -Inf

while (theta < 1) {
    sample <- c(3, 5, 4, 3, 4, 5, 6, 6, 7, 3, 1, 1)

    res <- 1
    for (i in sample) {
        res <- res * dbinom(i, 11, theta)
    }

    res <- log10(res)

    if (res > max) {
        cat("Theta: ", theta, " Probability: ", res, "\n")
        max <- res
    }

    theta <- theta + 0.00001
}