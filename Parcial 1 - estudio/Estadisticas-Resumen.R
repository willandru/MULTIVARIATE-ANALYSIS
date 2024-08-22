# Función para calcular el vector de medias
calcular_vector_medias <- function(X) {
  # Número de observaciones (filas de X)
  n <- nrow(X)
  
  # Vector de unos
  ones_vector <- rep(1, n)
  
  # Calcular la transposición de X
  X_transposed <- t(X)
  
  # Multiplicar X transpuesta por el vector de unos
  sum_vector <- X_transposed %*% ones_vector
  
  # Calcular el vector de medias dividiendo por n
  mean_vector <- sum_vector / n
  
  return(mean_vector)
}

# Ejemplo de uso
X <- matrix(c(2, 4,
              3, 5,
              4, 6), nrow = 3, byrow = TRUE)

# Llamar a la función
mean_vector <- calcular_vector_medias(X)

# Imprimir el resultado
print("Vector de Medias:")
print(mean_vector)
