temp = c(1, 2, 3, 4, 5, -1 , -2, -5, -3, - 4, -7, 15)
Data = list(name="Temperatures", data=temp, mean=mean(temp), cummulative_sum=cumsum(temp), max_temp=max(temp), min_temp=min(temp))

# Entrada 1 (nombre de la entrada y valor de la misma)
Data[1]

# Valor de la entrada 1
Data[[1]]

# Valor del componente data
Data$data

# Estructura de la lista
str(Data)

# Nombres de los componentes de la lista
names(Data)

