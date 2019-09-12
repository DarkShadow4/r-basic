horasPorAño = 365*24
segundosPorAño = horasPorAño*3600
segundosContados = 250*10^6
añosPasados = segundosContados%/%segundosPorAño
segundosRestantes = segundosContados%%segundosPorAño
horasPasadas = segundosRestantes/3600
diasPasadosAñoActual = horasPasadas%/%24
horasDiaActual = horasPasadas%%24
minutosDiaActual = (horasDiaActual- trunc(horasDiaActual))*60
mesActual = 365-diasPasadosAñoActual
fechaActual = 5/12/2025

#ecuación

secondGradeEquation = function(a, b, c=0) {
  print((-b+sqrt(as.complex((b^2)-(4*a*c))))/(2*a))
  print((-b+sqrt(as.complex((b^2)-(4*a*c))))/(2*a))
}
equation = function(a, b, c) {
  print((c-b)/a)
}
equation(5, 3, 0)
equation(7, 4, 18)
equation(1, 1, 1)

#expresiones

e=exp(1)
expression = 3*e-pi
print(expression, 4)

#numeros complejos

num = (2+3i)^2/(5+8i)
print(Mod(num), 4)
