## Model is E_theta[X_i] = exp(theta*t_i),
## t_i are real constants that are known.
theta0 <- -.5
mean_fn <- function(x, t) exp(t*x)
mean_fn <- Vectorize(mean_fn)
n <- 100
ts <- runif(n, 0, 10)
Exs <- exp(theta0*ts)
xs <- Exs + rnorm(n, sd = .1)

plot(xs~ts)
curve(mean_fn(x, t = theta0), min(ts), max(ts), lwd = 3, add = TRUE)

## Let's define and minimise Q(theta, xs)
Square_loss <- function(theta, sample, t){
  errors <- (sample - exp(theta*t))^2
  res <- sum(errors)
  return(res)
}

directOpt <- optimize(
    f = Square_loss,
    sample = xs,
    t = ts,
    interval = c(-100, 100)
)
directOpt
## Now, let's compare with finding the roots of Q'

SLprime <- function(theta, sample, t){
  -2*sum(
    (sample-exp(theta*t)) * exp(theta*t)*t
  )
}

rootOpt <- uniroot(
  f = SLprime,
  sample = xs,
  t = ts,
  interval = c(-100, 100)
)

rootOpt

curve(mean_fn(x, t = rootOpt$root), min(ts), max(ts),
      lty = 2, col = 2, lwd = 3,  add = TRUE)