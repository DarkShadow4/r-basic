gender = c("H", "M", "M", "H", "M", "H", "H", "M", "M")

# Simplemente crea un factor
gender.factor = factor(gender)
gender.factor

# Simplemente crea un factor
gender.asfactor = as.factor(gender)
gender.asfactor

# Crea un factor especificando los niveles
gender.factorWithMTTG = factor(gender, levels = c("H", "M", "PnD"))
gender.factorWithMTTG

# Crea un factor especificando los niveles y asignandoles etiquetas
gender.factorWithLabels = factor(gender, levels = c("H", "M", "PnD"), labels = c("Hombre", "Mujer", "Prefiere no Decirlo"))
gender.factorWithLabels

# Mostrar los niveles de un factor
levels(gender.factor)
levels(gender.asfactor)
levels(gender.factorWithMTTG)
levels(gender.factorWithLabels)

# Cambiar las etiquetas de los niveles de un factor
levels(gender.factorWithLabels) = c("Masculino", "Femenino", "No aportado")
levels(gender.factorWithLabels)
gender.factorWithLabels

# Factor con numeros
numeros = c(1, 2, 3, 4, 4, 1, 3, 2, 4, 1, 1, 3, 2)
numeros.factor = factor(numeros)
levels(numeros.factor) = c("Suspenso", "Sufuciente", "Notable", "Excelente")
levels(numeros.factor) = c("No apto", "Apto", "Apto", "Apto")

# Factor ordenado
ordered(numeros, labels = c("Sus", "Suf", "Not", "Exc"))
