theta0 <- pi^2/6
n <- 10000
X <- runif(n, min = 0, max = theta0)
M <- max(X)
Xtilde <- c(
  runif(n-1, 0, M),
  M
)

qqplot(X, Xtilde)

hist(X, probability = TRUE)
hist(Xtilde, probability = TRUE, col = 2, add = TRUE)

mean(X)
mean(Xtilde)

var(X)
var(Xtilde)

M
max(Xtilde)

quantile(X, probs = .02)
quantile(Xtilde, probs = .02)