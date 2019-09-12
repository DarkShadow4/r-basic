# Crear una matriz de 12 elementos agrupados por columna en 4 filas
matriz = matrix(1:12, nrow=4)
matriz

# Crear una matriz de 12 elementos agrupados por fila en 4 filas
matriz2 = matrix(1:12, nrow=4)
matriz2

# Crear una matriz de nfilas y ncolumnas con un valor por defecto
matriz3 = matrix(0, nrow = 4, ncol = 4)
matriz3

# Construir matrices a partir de vectores
v1 = 1:5
v2 = 1:5
v3 = 1:5
ca = 1:3
fa = 1:3
# Como fila (un vector es una fila)
mf = rbind(v1, v2, v3)
# Como columna (un vector es una columna)
mc = cbind(v1, v2, v3)

# Agregar filas adicionales
mc
rbind(mc, fa)
# Agregar columnas adicionales
mf
cbind(mf, ca)

# Crear una matriz diagonal
diagonal = 1:5
diag(diagonal)
#se le puede proporcionar un numero
diag(42, nrow = 4)
matriz[1,]
matriz[,1]
matriz[1,2]
matriz[c(1, 3), 1:3]

# Obtener datos respecto a la matriz
matriz
diag(matriz) # Diagonal
nrow(matriz) # Numero de filas
ncol(matriz) # Numero de columnas
dim(matriz) # Dimensiones
sum(matriz) # Suma de todos los elementos
prod(matriz) # Producto de todos los elementos
mean(matriz) # Media aritmetica de todos los elementos

# Tambien se puede obtener por filas o por columnas
rowSums(matriz)
colSums(matriz)
rowMeans(matriz)
colMeans(matriz)

# Se pueden realizar funciones por filas, columnas y por elementos
apply(matriz, MARGIN = 1, FUN = function(element){sqrt(sum(element^2))}) # Por fila
apply(matriz, MARGIN = 2, FUN = function(element){sqrt(sum(element^2))}) # Por columna
apply(matriz, MARGIN = c(1, 2), FUN = function(element){element^2}) # Por elemento

# Transpuesta de una matriz
matriz
t(matriz)
matriz + matriz
matriz *2
matriz%*%t(matriz) # Multiplicar matrices

# Otras funciones
M = matrix(1:9, nrow = 3)

det(M) # Dada una matriz cuadrada, devuelve su determinante
qr(M)$rank # Devuelve el rango de la matriz
qr(M)

solve(M) # Calcula la inversa de la matriz dada
# solve(matriz, vector_de_terminos_independientes) puede resolver sistemas de ecuaciones lineales

# Valores y vectores propios

eigen(M) # Devuelve una lista con los valores y vectores propios
