data("USArrests")
head(USArrests)
Datos <- scale(USArrests)
head(Datos)


# No. de Cluster
library(factoextra)

fviz_nbclust(USArrests, kmeans, method = "wss")


km <- kmeans(Datos, centers = 4, nstart = 25)


aggregate(USArrests, by=list(cluster=km$cluster), mean)

fviz_cluster(km, USArrests, ellipse.type = "norm")
