Sigma<-matrix(c(1,-2,0,-2,5,0,0,0,2),ncol=3)
Sigma

auto <- eigen(Sigma)

auto$values

auto$vectors
