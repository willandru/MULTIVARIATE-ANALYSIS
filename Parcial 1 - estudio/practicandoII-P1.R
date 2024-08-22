library(readxl)
Mujeres <- read_excel("Mujeres.xlsx")

head(Mujeres)

mu_o = c(4, 50, 10)

library(DescTools)
?HotellingsT2Test
res<-HotellingsT2Test(Mujeres, mu=mu_o)

res$p.value

library(Hotelling)
?hotelling.test
hotelling.test(Mujeres, mu=mu_o)

install.packages('MVTests')
library(MVTests)
OneSampleHT2(Mujeres, mu_o, 0.01)


## probar si las medias de diferentes observaciones agrupadas en 4 grupos son diferentes
#mu1 = mu2=mu3 =mu4 =mu5  o no

require(heplots)
data("Skulls")
X<-Skulls[,2:5]

library(mvShapiroTest)
mvShapiro.Test(as.matrix(X))


mod.skulls <- lm(cbind( mb, bh, bl, nh) ~ epoch, data=Skulls)
summary(mod.skulls)

# ----- Manova
mod<-manova(mod.skulls)
summary(mod, test = "Wilks")

#se rechaza H0, hay suficiente evidencia en la muestra para sugerir que almenos un mu es diferente.
