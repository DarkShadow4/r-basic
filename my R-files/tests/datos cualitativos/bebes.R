library(MASS)

str(birthwt)
head(birthwt)
help(birthwt)

dataframe = birthwt

# Raza de la madre
tabla = table(birthwt$low, birthwt$race)

dimnames(tabla) = list("weight under 2.5Kg" = c("No", "Yes"), race = c("race1", "race2", "race3"))

plot(tabla, xlab = "weight under 2.5Kg", ylab = "Mother's race")

barplot(tabla, beside = T, col = c("light green", "red"), legend.text = c("weights over 2.5Kg", "weights under 2.5Kg"),
        xlab = "Mother's race", names = c("race1", "race2", "race3"))

# Madre fumadora

tabla2 = table(birthwt$low, birthwt$smoke)

dimnames(tabla2) = list("weight under 2.5Kg" = c("No", "Yes"), "Mother smokes" = c("No", "Yes"))

plot(tabla2, xlab = "weight under 2.5Kg", ylab = "Mother smokes or not")

barplot(tabla2, beside = T, col = c("light green", "red"), legend.text = c("weights over 2.5Kg", "weights under 2.5Kg"),
        xlab = "Mother smokes or not", names = c("Mother does not smoke", "Mother does smoke"))

# Madre hipertensa

tabla3 = table(birthwt$low, birthwt$ht)

dimnames(tabla3) = list("weight under 2.5Kg" = c("No", "Yes"), "Mother had hypertension" = c("No", "Yes"))

plot(tabla3, xlab = "weight under 2.5Kg", ylab = "Mother has hypertension or not")

barplot(tabla3, beside = T, col = c("light green", "red"), legend.text = c("weights over 2.5Kg", "weights under 2.5Kg"), 
        xlab = "Mother's race", names = c("Mother does not have hypertension", "Mother has hypertension"))

# Frecuencias marginales tabla tridimensional (peso<2.5kg, fuma, raza)

tabla4 = table(birthwt$low, birthwt$smoke, birthwt$race)

dimnames(tabla4) = list("weight under 2.5Kg" = c("No", "Yes"), "Mother smokes" = c("No", "Yes"), race = c("race1", "race2", "race3"))

prop.table(tabla4, margin = 1)
prop.table(tabla4, margin = 2)

plot(aperm(tabla4, perm = c("race", "Mother smokes", "weight under 2.5Kg")), col = c("light green", "red"), main = "Title")
