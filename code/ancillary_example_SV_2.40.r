gen_amost_alea <-  function(n, theta){
  runif(n, min = theta-1/2, max = theta + 1/2)
}
computa_T <- function(X){
  return(
    c(max(X), max(X)-min(X))
  )
}
cond_T1 <- function(t1, t2, theta){
  I1 <- as.numeric(t1 > theta - 1/2 + t2)
  I2 <- as.numeric(t1 < theta + 1/2)
  dens <- 1/(1-t2) * I1 * I2
  return(dens)
}
######################


theta0 <- pi^2/6
Nsamp <- 10
Nrep <- 500
amostras <- matrix(NA, ncol = Nsamp, nrow = Nrep)
for(i in 1:Nrep){
  amostras[i, ] <- gen_amost_alea(n = Nsamp, theta = theta0)
}

Ts <- as.data.frame(t(apply(amostras, 1, computa_T)))
colnames(Ts) <- c("T1", "T2")


hist(Ts$T1 - theta0 + 1/2, probability = TRUE,
     xlab =  "T1 (shifted)")
curve(dbeta(x, Nsamp, 1), lwd = 3, col = 2, add = TRUE)

###
range(Ts$T2)
ff1 <- function(x) cond_T1(t1 = x, t2 = .35, theta = theta0)
ff2 <- function(x) cond_T1(t1 = x, t2 = .5, theta = theta0)
ff3 <- function(x) cond_T1(t1 = x, t2 = .9, theta = theta0)

curve(ff1, lwd = 3, 0, 2*theta0, xlab = expression(T[2]), 
      ylim = c(0, 10))
curve(ff2, lwd = 3, col = 2, add = TRUE)
curve(ff3, lwd = 3, col = 3, add = TRUE)
legend(
  x = "topleft",
  legend = c("t2=0.35", "t2=0.5", "t2=0.9"),
  lwd = 3, 
  col = 1:3,
  bty = 'n'
)
