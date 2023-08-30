library(ggplot2)


iter <- 3000 # numero de iteracoes
n0 <- 30 # numero de amostras da poisson por iteracao
th <- 5 # media da poisson
dp <- sqrt(th) # desvio padrao da poisson

g <-  function(x) return(x^2 + log(x+1))
dg <- function(x) return(2*x + 1/(x+1))

vec1 <- rep(0,iter)
medias <- rep(0,iter)
for(i in 1:iter){
  x <- rpois(n0, th)
  medias[i] <- mean(x)
  vec1[i] <- sqrt(n0)*(g(mean(x))-g(th))
}

n <- 10000 # numero grande para a dist. limite ficar suave
vec2 <- rnorm(n, 0, sd = dp*dg(th))

# plot de sqrt(n)(g(xn) - g(th)) vs. N(0,s2g´2)
ggplot(data.frame(value = c(vec1,vec2),
                  name = c(rep('sim', iter),
                           rep('delta', n)))
       )+
  geom_density(aes(x = value, fill = name),alpha = 0.3)+
  theme_bw()+
  scale_x_continuous(expand = c(0,0))+
  scale_y_continuous(expand = c(0,0))

# densidade simulada da média Xn
ggplot(data.frame(medias = medias))+
  geom_density(aes(x = medias, fill = 'r'),alpha = 0.3)+
  theme_bw()+
  scale_x_continuous(expand = c(0,0))+
  scale_y_continuous(expand = c(0,0))
