require(heplots)
data("Skulls") # dataset
require(mvShapiroTest) # prueba de Norm. Mult.
# - Prueba de Normalidad Multivariada
mvShapiro.Test(as.matrix(Skulls[,2:5]))
# --- Modelo para cada variable
mod.skulls<-lm(cbind( mb, bh, bl, nh) ~ epoch,
               data=Skulls)
summary(mod.skulls)
# --- Manova
mod<-manova(mod.skulls)
summary(mod, test = "Wilks")

#Se rechaza altamente significativo: Esto prueba que los taus son iguales: La prueba rechaza y dice no son iguales.
#Por lo tanto las medias de los craneos son diferentes