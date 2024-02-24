
getwd()

edades <- c(20,25,26,27,20,24,23,25,25,27,26,35,37,40,46,51,39)

histograma <- hist(edades, breaks = 6 , col = 'lightblue',xlab = 'Edad',main = 'Histograma de edades')

abline(v = mean(edades), col = 'red', lwd = 2)

abline(v = mean(edades) + sd(edades), col = 'green', lwd = 2)

abline(v = mean(edades) - sd(edades), col = 'green', lty = 2, lwd = 2)