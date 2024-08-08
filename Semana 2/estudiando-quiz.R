


require(MASS)


mu<-c(0,0)
mu
sigma<-matrix(c(1, 0.9, 0.9, 1), ncol = 2)
sigma

set.seed(42)
n<-50

X1 <- mvrnorm(n=n, mu=mu, Sigma=sigma)

X2 <-rbeta(n=n, shape1 = 3, shape2 = 2)

X3 <- rgamma(n=n, shape = 2, scale = 2)


# ---Calcular distancias de Malahanobis --

mu1 <-mean(X1)
sigma1 <-cov(X1)
mahalanobis1<-mahalanobis(X1, mu1, sigma1)

mu2 <-mean(X2)
sigma2 <-var(X2)
mahalanobis2<-mahalanobis(X2, mu2, sigma2)

mu3 <-mean(X3)
sigma3 <-var(X3)
mahalanobis3<-mahalanobis(X3, mu3, sigma3)

# --- Tst
install.packages('mvShaphiroTest')
require(mvShaphiroTest)
shapiro.test(X3)
