## Densidad de na -- NORMAL BIVARIADA -- 

require(mvtnorm)

mu <- c(0,0)

Sigma <- matrix(c(2,0,0,1), ncol=2)

x1<- seq(-5,5,length=40)
x2<-x1


# densidad de la f normal multiv

f<-matrix(0, nrow=length(x1), ncol = length(x2))

for(i in 1:length(x1))
  for(j in 1:length(x2))
    f[i,j]<- dmvnorm(c(x1[i], x2[j]), mean=mu, sigma= Sigma)

#--- Grafico

persp(x1, x2, f,
      theta=70, #ángulo de visualización
      phi =30,  #ángulo de visualización
      col="gray",
      ticktype= "detailed")


# ---Grafico de contornos --

contour(x1,
        x2,
        f,
        draw=T,
        nlevels=20,
        labcex=0.8,
        xlab=expression(x[1]),
        ylab=expression(x[2])
             )
