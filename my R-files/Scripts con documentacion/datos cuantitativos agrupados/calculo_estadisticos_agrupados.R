crabs = read.table("crabs_intervalos.txt", header = TRUE)
crabs

TOTAL = crabs$Fr.cum.abs[length(crabs$Fr.cum.abs)]
anchura_media = round(sum(crabs$Fr.abs*crabs$mc)/TOTAL, 3)
anchura_var = round((sum(crabs$Fr.abs*crabs$mc^2)/TOTAL)-anchura_media^2, 3)
anchura_dt = round(sqrt(anchura_var), 3)
I_modal = crabs$intervals[which(crabs$Fr.abs == max(crabs$Fr.abs))]
I_crit = crabs$intervals[which(crabs$Fr.cum.rel >= 0.5)[1]]
L = c(20.95, 22.25, 23.55, 24.85, 26.15, 27.45, 28.75, 30.05, 31.35, 32.65, 33.95)

# Calcular la aproximacion de la mediana

n = as.numeric(TOTAL)
c = which(crabs$interval == I_crit)
Lc = L[c]
Ac = L[c+1] - L[c]
Nc_ant = crabs$Fr.cum.abs[c-1]
nc = crabs$Fr.abs[c]
M = Lc+Ac*((0.5*n)-Nc_ant)/nc
