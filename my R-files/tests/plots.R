# ejercicio 1

y = function(x) { x^2-3*x+30 }
curve(y, xlim = c(-15, 15), main="Una parábola", xlab = expression(x), ylab = expression(x^2-3*x+30))

# ejercicio 2

plot(y(-15:15))

# ejercicio 3

f = function(x) { 5*2^x }
curve(f, xlim = c(-10, 25), ylab = expression(y=5*(2^x)), xlab = "")

# ejercicio 4

y_1 = function(x) {3*x}
y_2 = function(x) {-3*x}

curve(y_1, col="blue", main="2 rectas", sub = "Dos rectas con pendiente opuesta")
curve(y_2, col="green", add=T, xlim = c(-10, 20))
legend("topleft", legend = c(expression(3*x), expression(-3*x)), col = c("blue", "green"), lwd = 1)

# ejercicio 5

plot(x = 0, y = 0, type = "n")
abline(h = 0, col="red", lwd = 5)

# ejercicio 6

plot(x = 0, y = 0, type = "n")
abline(coef = c(7, 2), col="red", lwd = 2)
