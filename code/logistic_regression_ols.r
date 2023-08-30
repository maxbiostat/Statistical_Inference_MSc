g <- function(x) exp(x)/(1+exp(x))
g_inv <- function(y) log( - y/(y-1))
lf <- function(x, theta1, theta2){
  g(theta1 + theta2*x)
}
lf <- Vectorize(lf)
###########################################
###########################################

Nobs <- 50
Xs <- rnorm(n  = Nobs)

alpha <- -.4
beta <- 2

etas <- g(alpha + beta*Xs)
Ys <- rbinom(n = Nobs, size = 1, prob = etas)

plot(Ys~Xs)
curve(lf(x, theta1 = alpha, theta2 = beta),
      min(Xs), max(Xs), lwd = 3, add = TRUE)


Loss_a <- function(par){
  a <- par[1]
  b <- par[2]
  sum((Ys-g(a + b*Xs))^2)
}

Opt.minSq <- optim(par = c(0, 0), fn = Loss_a)

theta.hat <- Opt.minSq$par

curve(lf(x, theta1 = theta.hat[1], theta2 = theta.hat[2]),
      min(Xs), max(Xs), lwd = 3, col = 2, lty = 2, add = TRUE)
