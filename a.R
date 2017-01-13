library(psy)

stai2odwr = c(21, 26, 27, 30, 33, 36, 39) - 20
kasodwr = c(2, 3, 5, 7, 9, 12, 13, 18, 22, 23, 25, 27, 28)

stai2 = readRDS('stai2')
kas = readRDS('kas')

stai2[,stai2odwr] = 5 - stai2[,stai2odwr]
kas[,kasodwr] = 1 - kas[,kasodwr]

plot(prcomp(stai2))

plot(prcomp(kas))

cronbach(stai2)

cronbach(kas)

factanal(stai2, 1)

factanal(stai2, 2)

factanal(kas, 1)

factanal(kas, 2)

factanal(kas, 3)
