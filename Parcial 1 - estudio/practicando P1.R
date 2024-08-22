# --- Example 4.14 from Johnson and Wichern --- #
install.packages('tidyverse')
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
