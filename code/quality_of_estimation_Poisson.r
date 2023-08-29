## We'll assess how good MLE is at getting the right probabilities
library(tidyverse)

theta0 <- 5
n <- 20
Nrep <- 500

data.sets <- lapply(1:Nrep, function(i){
  rpois(n = n, lambda = theta0)
}) 

theta.emvs <- unlist(lapply(data.sets, mean))

x.u <- qpois(p = .99, lambda = theta0)
xs <- seq(0, x.u)
true.probs <- dpois(x = xs, lambda = theta0)

est.probs <- lapply(1:Nrep, function(i){
  res <- tibble::tibble(
    replicate = i,
    x = xs,
    est_prob = dpois(x = xs, lambda = theta.emvs[i]),
    true_prob = true.probs
  )
  return(res)
})

est.probs.df <- do.call(rbind, est.probs)

est.probs.df <- est.probs.df %>% mutate(rae = abs(est_prob - true_prob)/true_prob )

mean.probs <- aggregate(est_prob ~ x, est.probs.df, mean)
mrae.probs <- aggregate(rae ~ x, est.probs.df, mean)

( mrae.theta <- mean(abs(theta.emvs - theta0)/theta0)) 

ggplot(data = mrae.probs,
       aes(x = x, y = rae)) +
  geom_point(size = 3) +
  # geom_hline(yintercept = mrae.theta, linetype = "longdash") +
  scale_y_continuous("Mean relative absolute error") +
  theme_bw(base_size = 20)
