df = read.table("../../../data/grades.txt")
str(df)
head(df)

# Ejercicio 1

summary(df, digits = 3)
medias_por_grupos = by(df$nota, df$estudio, FUN = mean)
by(df$nota, df$estudio, FUN = median)
by(nota, estudio, data = df, FUN = moda)

aggregate(df$nota~df$estudio,FUN = function(x) {names(which(table(round(x,2))==max(table(round(x,2)))))}) # Moda por grupo

as.character(df[which(df$nota == max(df$nota)), 1])

media_estudiantes = round(mean(df$nota), 2)
names(medias_por_grupos[which(medias_por_grupos > media_estudiantes)])

# Ejercicio 2

variaciones = by(df$nota, df$estudio, FUN = sd)
names(variaciones[which(variaciones == max(variaciones))])

# Ejercicio 3

# Al tener el grupo de Mates un rango intercuartílico mayor, la nota de Industrial puede ser un valor atípico. Que de hecho lo es

# Ejercicio 4

diagrama = boxplot(df$nota~df$estudio,
        col = c("lightblue", "green", "cyan", "orange"),
        main = "Dispersión de notas por cada carrera")
points(by(df$nota, df$estudio, FUN = mean), col = "red", pch = 20)

# Ejercicio 5

diagrama$group

# Ejercicio 6

variaciones = by(df$nota, df$estudio, FUN = var)
names(variaciones[which(variaciones == max(variaciones))])

levels(df$estudio)[which((diagrama$stats[5,] - diagrama$stats[1,]) == max(diagrama$stats[5,] - diagrama$stats[1,]) )]

# Ejercicio 7

medias = by(df$nota, df$estudio, FUN = mean)
names(medias[which(medias == max(medias))])
