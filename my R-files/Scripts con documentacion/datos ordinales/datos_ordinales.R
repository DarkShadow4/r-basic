jirafas = sample(c("muy_corto", "corto", "normal", "largo", "muy_largo"), size = 100, replace = T)
jirafas = ordered(jirafas, levels = c("muy_corto", "corto", "normal", "largo", "muy_largo"))
jirafas
table(jirafas)
zonas = rep(c("A", "B", "C", "D"), c(30, 25, 35, 10))
jirafas = data.frame(zonas, jirafas)
str(jirafas)

table(jirafas)


crabs = read.table("../../../data/datacrab.txt", header = T)[,-1]
str(crabs)
intervalos = cut(crabs$width, breaks = c(21, 25, 29, 33, Inf), right = FALSE, labels = c("21-25", "25-29", "29-33", ">=33"))
crabs$width.rank = ordered(intervalos)

tabla = table(crabs[,c(1, 6)])
prop.table(tabla, margin = 1)