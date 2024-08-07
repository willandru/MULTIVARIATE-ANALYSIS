

# --Cargamos los datos 'Iris' y los visualizamos

data("iris")
View(iris)
X<-iris[,1:4] #extraemos las variables cunatitativas


# --Vector de Medias Muestrales

Xbarra<-apply(X,2,mean)
round(Xbarra,2)

#--Matriz de Covarianzas Muestral

S<-cov(X)
round(S,2)

# --Matriz de Correlacion Muestral

R<-cor(X)
round(R,2)


# --- Diagrama de Puntos

install.packages('ggplot2')
require(ggplot2)

ggplot(X, aes(x=Sepal.Width)) + geom_dotplot(binwidth = 0.05)


# ---Histograma

hist(X$Sepal.Width, xlab = "Ancho del sepalo", ylab="", main="")

# --Boxplot

ggplot(X, aes(x=Sepal.Width)) + geom_boxplot()

#--- Gráfico de Correlaciones

install.packages('corrplot')
require(corrplot)

corrplot(R, type ="lower")


#---Grafico de Matrices de Dispersión

pairs(X, #Datos
      pch=12, #Simbolo
      )

pairs(X, #Datos
      pch=21, #Simbolo
      bg = c(1,2,3)[unclass(iris$Species)]
)


# También podemos extraer las estadisticas descriptivas para cada una de las especies usando el comando subset.

Setosa<-subset(iris, Species =="setosa")


#---Grafifo de Curvas de Crecimiento

install.packages('lattice')
require(lattice)

parallelplot(X)


#---Caras de Chernoff

install.packages('aplpack')
require(aplpack)

Setosa<-subset(iris, Species =="setosa")

Plantas<-1:50
Setosa<-cbind(Plantas,Setosa)
faces(Setosa[1:25, 1:4],
      face.type=1,
      scale =TRUE,
      labels = Setosa$Plantas[1:25],
      plot.faces=TRUE,
      nrow(.plot=5,
           ncol.plot=5)

#--Grafico de Estrellas o Radar

stars(Setosa[1:25, 1:4],
      key.loc=c(20,8))      
      
# --Scatterplot 3D
install.packages('scatterplot3d')
require(scatterplot3d)
scatterplot3d(iris$Sepal.Length,
              iris$Sepal.Width,
              iris$Petal.Length)

#--Con rotacion
install.packages('rgl')
require(rgl)
plot3d(iris$Sepal.Length,
       iris$Sepal.Width,
       iris$Petal.Length,
       col="blue", size=3)
