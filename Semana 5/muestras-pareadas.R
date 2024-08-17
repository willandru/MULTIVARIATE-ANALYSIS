# ----- Muestras Pareadas ----- #
X1j1<-c(6,6,18,8,11,34,28,71,43,33,20)
X1j2<-c(27,23,64,44,30,75,26,124,54,30,14)
X2j1<-c(25,28,36,35,15,44,42,54,34,29,39)
X2j2<-c(15,13,22,29,31,64,30,64,56,20,21)
X<-data.frame(X1j1,X1j2,X2j1,X2j2)
Dj1<-X$X1j1-X$X2j1
Dj2<-X$X1j2-X$X2j2
Dbarra1<-mean(Dj1)
Dbarra2<-mean(Dj2)
Dbarra<-c(Dbarra1,Dbarra2)


SD<-matrix(c(var(Dj1),cov(Dj1,Dj2),
             cov(Dj1,Dj2),var(Dj2)),ncol=2)
T2<-11*t(Dbarra)%*%solve(SD)%*%Dbarra
Fc<-qf(0.05, 2,9,lower.tail = F)
vc<-((10*2)/9)*Fc
T2
Fc
vc

#H0: los dos laboratorios dan la misma media
#h1: difieren los resultados de los dos laboratorios
#El valor observado (13.6) le gana al valor critico (9.45)


#Verificar la dieferencia de medias bajo HOMOGENESTECIDAD usamos T de hotling