
#--- DISTANCIA DE MAHALANOBIS ---

require(MASS)
mu<- c(0,0)
mu
sigma <-matrix(c(2,1,1,2), ncol=2)
sigma

n<- 500
x<-mvrnorm(n,mu,sigma)
xbarra<-colMeans(x)
s<-cov(x)
dm<-mahalanobis(x,xbarra,s)
cuantiles<-qchisq(ppoints(length(x)), df=2)
qqplot(cuantiles,dm)
abline(0,1)

