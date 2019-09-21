TablaFrecs.L = function(x,L,V){
  x_cut = cut(x, breaks=L, right=FALSE, include.lowest=V)
  intervals = levels(x_cut)
  mc = (L[1:(length(L)-1)]+L[2:length(L)])/2
  Fr.abs = as.vector(table(x_cut)) 
  Fr.rel = round(Fr.abs/length(x),4)
  Fr.cum.abs = cumsum(Fr.abs)
  Fr.cum.rel = cumsum(Fr.rel)
  tabla = data.frame(intervals, mc, Fr.abs, Fr.cum.abs, Fr.rel, Fr.cum.rel)
  tabla
}

notas = scan()
L = c(0, 5, 7, 9, 10)
notas1 = cut(notas, breaks = L, right = F, include.lowest = T)
notas1

MC = (L[1:length(L)-1]+L[2:length(L)])/2
MC

notas2 = cut(notas, breaks = L, labels = MC, right = F, include.lowest = T)
notas2

notas3 = cut(notas, breaks = L, labels = F, right = F, include.lowest = T) # Con labels = FALSE obtenemos un vector
notas3

notas4 = cut(notas, breaks = L, labels = c("Susp", "Aprob", "Not", "Exc"), right = F, include.lowest = T)
notas4

table(notas4)
prop.table(table(notas4))
cumsum(table(notas4))
cumsum(prop.table(table(notas4)))

notasHist = hist(notas, breaks = L, right = FALSE, include.lowest = TRUE, plot = FALSE)
FAbs = notasHist$count
FRel = prop.table(FAbs)
FAbsCum = cumsum(FAbs)
FRelCum = cumsum(FRel)

intervalos = c("[0,5)","[5,7)","[7,9)","[9,10]")
calificacion = c("Suspenso", "Aprobado", "Notable", "Excelente")
marcas = notasHist$mids
tabla.Fr = data.frame(intervalos,calificacion,marcas,FAbs,FAbsCum,FRel,FRelCum)
tabla.Fr