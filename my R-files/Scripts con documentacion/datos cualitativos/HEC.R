HairEyeColor

male <- HairEyeColor[,,1]
HairEyeColor[,,2] -> female

data = as.table(male+female)

data

dimnames(data) = list(pelo = c("Negro", "Marrón", "Pelirrojo", "Rubio"), ojos = c("Marrones", "Azules", "Pardos", "Verdes"))

plot(data, col = "cyan", main = "Diagrama de mosaico de la tabla de datos")

sum(data) # Total de individuos

colSums(data)
rowSums(data)

colSums(prop.table(data))
rowSums(prop.table(data))

prop.table(colSums(data)) # Ésto también funciona
prop.table(rowSums(data)) # Ésto también funciona


barplot(colSums(prop.table(data)), col = c("tan4", "blue", "dark orange", "green"), main = "Frecuencias relativas del color de ojos", ylim = c(0, 0.4))
barplot(rowSums(prop.table(data)), col = c("black", "tan4", "red", "yellow"), main = "Frecuencias relativas del color de pelo", ylim = c(0, 0.6))


prop.table(data)
frm1 <- prop.table(data, margin = 2)
frm2 <- prop.table(data, margin = 1)


barplot(frm1, beside = T, col = c("black", "tan4", "red", "yellow"), legend.text =  c("Negro", "Marrón", "Pelirrojo", "Rubio"), ylim = c(0,0.8))
barplot(t(frm2), beside = T, col = c("tan4", "blue", "dark orange", "green"), legend.text = T, ylim = c(0,0.6))

