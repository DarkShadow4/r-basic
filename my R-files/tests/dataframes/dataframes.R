medalsDF = read.csv("./medals.csv")
str(medalsDF)
nrow(medalsDF)

nrow(medalsDF[medalsDF$Medal == "Bronze",])
nrow(medalsDF[medalsDF$Medal == "Silver",])
nrow(medalsDF[medalsDF$Medal == "Gold",])

nlevels(medalsDF$City)

nrow(medalsDF[medalsDF$Event.gender=="M",])
nrow(medalsDF[medalsDF$Event.gender=="W",])

str(medalsDF)

nofyears = cbind(medalsDF, N_one = rep(1, nrow(medalsDF)))
nofyears

most_people = aggregate(N_one ~ Year, data = nofyears, FUN = sum, na.rn=T)
most_people = most_people[which.max(most_people$N_one),]
most_people$Year

freqs = list(numbers = levels(as.factor(medalsDF$Year)))
freqs$numbers
freqs$freq = aggregate(N_one ~ as.factor(medalsDF$Year), data = nofyears, FUN = sum, na.rm = TRUE)
freqs$numbers[freqs$freq$N_one == max(freqs$freq$N_one)]

medalsDF$NOC[medalsDF$Year > 1960 & medalsDF$Year < 1996]

medals_in_period = aggregate(N_one ~ NOC + Year, data = nofyears, FUN = sum, na.rm=T, subset = (Year>1960 & Year<1996))
medals_in_period = aggregate(N_one ~ NOC, data = medals_in_period, FUN = sum, na.rm = T)
best_country = medals_in_period[which.max(medals_in_period$N_one),]$NOC
