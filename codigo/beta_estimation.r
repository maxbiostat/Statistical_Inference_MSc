get_MM <- function(sample){
  m <- mean(sample)
  v <- var(sample)
  W <- m*(1-m)/v - 1
  a.hat <- m * W
  b.hat <- (1-m)*W
  return(
    c(a.hat, b.hat)
  )
}
Loss_a <- function(par, xs){
  a <- exp(par[1])
  b <- exp(par[2])
  mu <- a/(a + b)
  sum((xs-mu)^2)
  # sum(abs(xs-mu))
}

get_MQ <- function(sample){
  Opt.minSq <- optim(par = c(0, 0), fn = Loss_a, xs = sample)
  return(
    exp(Opt.minSq$par)
  )
}
compute_MSE <- function(theta0, hats){
  VV <- var(hats)
  BB <- mean(hats) - theta0
  MSE <- VV + BB^2
  EQM <- mean((hats-theta0)^2)
  return(data.frame(
    est_variance = VV,
    est_bias = BB,
    mse = MSE,
    eqm = EQM
  ))
}

##################
alpha0 <- 2
beta0 <- 5
Nobs <- 500
Nrep <- 1000

all.replicates <- matrix(NA, ncol = Nobs, nrow = Nrep)
for(i in 1:Nrep){
  all.replicates[i, ] <- rbeta(n = Nobs, shape1 = alpha0, shape2 = beta0)
}

MM.ests <- t(apply(all.replicates, 1, get_MM))
MQ.ests <- t(apply(all.replicates, 1, get_MQ))

par(mfrow = c(2, 2))
hist(MM.ests[, 1], probability = TRUE, main = "",
     xlab = expression(hat(theta[1]^MM)))
abline(v = alpha0, lwd = 4, lty = 2)

hist(MM.ests[, 2], probability = TRUE,  main = "",
     xlab = expression(hat(theta[2]^MM)))
abline(v = beta0, lwd = 4, lty = 2)

hist(MQ.ests[, 1], probability = TRUE, main = "",
     xlab = expression(hat(theta[1]^MQ)))
abline(v = alpha0, lwd = 4, lty = 2)

hist(MQ.ests[, 2], probability = TRUE,  main = "",
     xlab = expression(hat(theta[2]^MQ)))
abline(v = beta0, lwd = 4, lty = 2)

compute_MSE(alpha0, MM.ests[, 1])
compute_MSE(alpha0, MQ.ests[, 1])
compute_MSE(beta0, MM.ests[, 2])
compute_MSE(beta0, MQ.ests[, 2])