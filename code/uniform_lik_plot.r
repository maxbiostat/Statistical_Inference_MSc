f_theta <- function(x, theta){
  1/theta * (x>0) * (x<=theta)
}
lik <- function(data, par){
  prod(
    sapply(
      data, function(x) f_theta(x = x, theta = par)
    )
  )
}
theta0 <- pi^2/6
n <- 10
X <- runif(n, min = 0, max = theta0)
fn <- function(t) lik(data = X, par = t)
fn <- Vectorize(fn)

M <- max(X)

pfn <- function(x) ifelse(x > M + M/300 || x < M - M/300, fn(x), NA)
pfn <- Vectorize(pfn)

curve(pfn, 0, 2*M, lwd = 4,
      xlab = expression(theta),
      ylab = expression(L[n](theta)))
abline(v = M, lty = 2)