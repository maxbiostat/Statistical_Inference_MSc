approx_ratio_moments <- function(mx, my, vx, vy, cxy){
  # R = X/Y
  mr <- mx/my
  # mr2 <- mr - 2 * cxy/my^2 + vy*mx/my^3
  vr <- mr^2 * (vx/mx^2 + vy/my^2 - 2 * cxy/(mx * my) )
  return(c(mr, vr))
}

Alpha <- .935
prs <- 0.5 * c(1 - Alpha, 1 + Alpha)

### Poisson
theta1 <- 20
theta2 <- 25
eta <- 15

n <- 1e6
Z0 <- rpois(n = n, lambda = eta)
Z1 <- rpois(n = n, lambda = theta1)
Z2 <- rpois(n = n, lambda = theta2)
X1 <- Z1 + Z0
X2 <- Z2 + Z0

R <- X1/X2

R.mom <- approx_ratio_moments(mx = theta1 + eta, my = theta2 + eta,
                              vx = theta1 + eta, vy = theta2 + eta,
                              cxy = eta)

c( mean(R), var(R) )
R.mom


emp.qs.R <- quantile(R, probs = prs)
app.qs.R <- qnorm(p = prs, mean = R.mom[1], sd = sqrt(abs(R.mom[2])) )

hist(R, probability = TRUE, main = "Ratio of correlated Poisson")
abline(v = emp.qs.R, lwd = 2, lty = 2)
abline(v = app.qs.R, lwd = 2, lty = 3, col = 2)

## normal

mu1 <- 15
mu2 <- 14
v1 <- 1.5^2
v2 <- 1.4^2
zeta <- 2

Sigma <- matrix(c(v1, zeta, zeta, v2), ncol = 2)

Y <- mvtnorm::rmvnorm(n, mean = c(mu1, mu2), sigma = Sigma)

cov(Y)
Sigma

Q <- Y[, 1]/ Y[, 2]

Q.mom <- approx_ratio_moments(mx = mu1, my = mu2,
                              vx = v1, vy = v2,
                              cxy = zeta)

c( mean(Q), var(Q) )
Q.mom


emp.qs.Q <- quantile(Q, probs = prs)
app.qs.Q <- qnorm(p = prs, mean = Q.mom[1], sd = sqrt(abs(Q.mom[2])) )


hist(Q, probability = TRUE, main = "Ratio of correlated normals")
abline(v = emp.qs.Q, lwd = 2, lty = 2)
abline(v = app.qs.Q, lwd = 2, lty = 3, col = 2)
