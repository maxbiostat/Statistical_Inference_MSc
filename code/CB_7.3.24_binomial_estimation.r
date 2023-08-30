get_delta_1 <- function(sample){
   as.numeric(
     sample[1] == 1
   )
}
get_delta_2 <- function(sample, Ntrial){
  n <- length(sample)
  S <- sum(sample) ## T in the exam's notation
  ld2 <- log(Ntrial) + lchoose(Ntrial*(n-1), S-1) - lchoose(Ntrial*n, S)
  return(exp(ld2))
}
CRLB <- function(theta, k, size){
  Itheta <- k/(theta*(1-theta))
  gprime <- -k*(1-theta)^k * (k*theta-1)/(theta-1)^2
  return(
    gprime^2 / (size*Itheta)
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

get_est_properties <- function(theta0, Nt, Nobs, Nrep){
  gtheta0 <- exp(log(Nt) + log(theta0) + (Nt-1)*log1p(-theta0))
  
  all.replicates <- matrix(NA, ncol = Nobs, nrow = Nrep)
  for(i in 1:Nrep){
    all.replicates[i, ] <- rbinom(n = Nobs, size = Nt, prob = theta0)
  }
  
  D1.ests <- apply(all.replicates, 1, get_delta_1)
  D2.ests <- apply(all.replicates, 1, get_delta_2, Ntrial = Nt)
  
  vv <- tibble::tibble(
    theta_0 =  theta0,
    var_d1 = var(D1.ests),
    var_d2 = var(D2.ests),
    cramer_rao = CRLB(theta0, k = Nt, size = Nobs)
  )
  
  out <- list(
    D1_hat = D1.ests,
    D2_hat = D2.ests,
    gtheta = gtheta0,
    var_stuff = vv
  )
  return(out)
}
##################
K <- 50 ## k
n.obs <- 50 ## n
n.rep <- 1E5

Exemplo <- get_est_properties(theta0 = .234, Nt = K,
                              Nobs = n.obs, Nrep = n.rep)


par(mfrow = c(1, 2))
hist(Exemplo$D1_hat, probability = TRUE, main = "",
     xlab = expression(delta[1]))
abline(v = Exemplo$gtheta, lwd = 4, lty = 2)

hist(Exemplo$D2_hat, probability = TRUE,  main = "",
     xlab = expression(delta[2]))
abline(v = Exemplo$gtheta, lwd = 4, lty = 2)

Exemplo$var_stuff

thetas <- 1:9/10

all.ests <- lapply(thetas, function(p) {
  get_est_properties(theta0 = p, Nt = K,
                     Nobs = n.obs, Nrep = n.rep)
})

results <- do.call(rbind,
                   lapply(all.ests, function(x) x$var_stuff))

print(xtable::xtable(results, type = "latex", digits=-10),
      file = "binom_estimation.tex")


par(mfrow = c(1, 1))
library(ggplot2)
pp <- ggplot(data = results, 
             aes(x = ))
plot(log(var_d2)~theta_0, results)
points(log(cramer_rao)~theta_0, results, pch = 16, col = 2)

results
