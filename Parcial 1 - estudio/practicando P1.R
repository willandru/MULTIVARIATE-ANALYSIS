# --- Example 4.14 from Johnson and Wichern --- #
install.packages('tidyverse')
library('readxl')
library('tidyverse')
Rigidez <- read_excel("C:/Users/willi/GITHUB/MULTIVARIATE-ANALYSIS/Parcial 1 - estudio/Rigidez.xlsx")
Datos<-Rigidez %>% as.data.frame()
head(Datos)

par(mfrow=c(2,2))
boxplot(Datos$x1, main=expression(x[1]),xlab="",ylab="")
boxplot(Datos$x2, main=expression(x[2]),xlab="",ylab="")
boxplot(Datos$x3, main=expression(x[3]),xlab="",ylab="")
boxplot(Datos$x4, main=expression(x[4]),xlab="",ylab="")

par(mfrow=c(1,1))
boxplot(Datos)

qqnorm(Datos$x1, main=expression(x[1]))
qqline(Datos$x1)


install.packages('mvShapiroTest')
install.packages('MVN')

library('MVN')
?mvn
mvn(Datos, mvnTest='mardia')

library('mvShapiroTest')
mvShapiro.Test(as.matrix(Datos))
?mvShapiro.Test


result<-mvn(Datos, mvnTest = "mardia",
         multivariateOutlierMethod ="quan" )


#---prueba de esfericidad o de Barltett--

library('psych')

cortest.bartlett(cor(Datos), n=30)



#---QQplot normal multuivariado--

X<- as.matrix(Datos)
Xbarra<-colMeans(X)
S<-cov(X)
dm<- mahalanobis(X, Xbarra, S)
cuantiles <- qchisq(ppoints(length(X)), df=4)
qqplot(cuantiles, dm)

cortest.bartlett(cor(Datos), n=30)

library('Hotelling')
install.packages('Hotelling')
hotelling.test()
install.packages('DescTools')
library('DescTools')
HotellingsT2Test()