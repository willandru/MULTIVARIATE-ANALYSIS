
df <- read.csv2("anexo1.csv")
str(df)
head(df)
summary(df)


library(ggplot2)

# Histograms for each variable
ggplot(stack(df), aes(x = values, fill = ind)) +
  geom_histogram(position = "identity", alpha = 0.5, bins = 10) +
  labs(title = "Histograms of Variables", x = "Values", y = "Frequency") +
  facet_wrap(~ind, scales = "free") +
  theme_minimal()
library(reshape2)
df_long <- melt(df)
# Boxplot
ggplot(df_long, aes(x = variable, y = value, fill = variable)) +
  geom_boxplot() +
  labs(title = "Boxplots de las Variables", y = "Valores") +
  theme_minimal()
# Histograma
ggplot(df_long, aes(x = value, fill = variable)) +
  geom_histogram(position = "identity", alpha = 0.5, bins = 10) +
  facet_wrap(~variable, scales = "free") +
  labs(title = "Histogramas de las Variables", x = "Valores", y = "Frecuencia") +
  theme_minimal()

install.packages("MVN")
library(MVN)
# Evaluar la normalidad multivariada
mvn_result <- mvn(data = df, mvnTest = "mardia")
# Mostrar resultados
print(mvn_result)

####

x_barra=colMeans(df)


