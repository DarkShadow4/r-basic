x = c(1, 2, 3)
fecha = rep(2002, 10)
vec <- scan()
fix(vec)

vector = seq(2, by=2, length.out = 5)
vector+2
sqrt(vector)
sapply(vector, FUN = sqrt)

# Ordenar en orden inverso
rev(sort(vector))


length(vector)
max(vector)
min(vector)
sum(vector)
prod(vector)
mean(vector)
cummax(rev(sort(vector)))
cummin(vector)
cummin(rev(sort(vector)))
cumprod(vector)
cumsum(vector)
diff(vector)
diff(cumsum(vector))
diff(cumprod(vector))
sort(vector, decreasing = TRUE)

# obtener las posiciones pares

vector[-seq(2, length(vector), by = 2)]

# obtener numeros pares de un vector

x = 1:10
x[x%%2==0]

# obtener numeros de un vector en base al valor de los elementos de otro vector de igual longitud

y = -10:-1
x[abs(y)>5 & y%%2==0]

# wich

which(x)
