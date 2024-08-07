


# ---Ingresamos los Datos ---

X <- matrix(c(42,52,48,58,4,5,4,3) , ncol=2, nrow=4)
X <- data.frame(X)
colnames(X)<-c("Ventas", "No. Libros")
X

# --- Vector de Medias Muestrales ---

xbarra <-apply(X,2,mean)
xbarra

# --Matriz de Varianzas y Covarianzas Muestral

S<-cov(X)
S

# --Matriz de Correlacion Muestral

R<- cor(X)
R

# --Coeficiente de Aimetría y de Kurtosis

install.packages('moments')
require(moments)

skewness(X$Ventas)
skewness(X$`No. Libros`)

# --Coeficiente de Kurtosis

kurtosis(X$Ventas)
kurtosis(X$`No. Libros`)
