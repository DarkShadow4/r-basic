crabs = read.table("../../../data/datacrab.txt", header = TRUE)

str(crabs)
cw = crabs$width
n = length(cw)

k = nclass.scott(cw)

A = round(diff(range(cw))/k, 1) + 0.1

L1 = min(cw)-1/2*0.1
L = c(L1, L1 + A*(1:10))

histAbs = function(x,L) {
  h = hist(x, breaks = L, right = FALSE, freq = FALSE,
           xaxt = "n", yaxt = "n", col = "lightgray", # xaxt = "n" indica que no se muestre el eje x lo mismo para y con yaxt
           main = "Histograma de frecuencias absolutas", 
           xlab = "Intervalos y marcas de clase",ylab = "Frecuencias absolutas")
  axis(side = 1, at=L) # side = 1 abscisas 2 ordenadas, at = lugares donde dibujar divisiones del eje
  text(h$mids, h$density/2, labels=h$counts, col="purple") 
}

h = hist(cw, breaks = L, right = F, plot = F)

histAbs(cw, L)
rug(cw)

histAbs(cw, L)
rug(jitter(cw))

density(cw)

str(density(cw))
