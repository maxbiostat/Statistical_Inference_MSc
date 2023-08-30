sigma <- 1/10
desired.alpha <- .1
desired.beta <- .8
theta0 <- -2
theta1 <- theta0 + sigma
beta <- function(c, theta, n){
  pnorm(c + (theta0-theta)/(sigma/n), lower.tail = FALSE)
}

c <- -qnorm(p = desired.alpha)
k <- -qnorm(p = desired.beta)
(nstar <- ceiling((c-k)^2) )

beta(c = c, theta0, n = nstar)
beta(c = c, theta = theta0 + sigma, n = nstar)