#Code only for 1st plot

NEI[, Emissions := lapply(.SD, as.numeric), .SDcols = c("Emissions")]

totalNEI <- NEI[, lapply(.SD, sum, na.rm = TRUE), .SDcols = c("Emissions"), by = year]

png(filename='plot1.png')

barplot(totalNEI[, Emissions]
        , names = totalNEI[, year]
        , xlab = "YEARS", ylab = "EMISSIONS"
        , main = "Emissions over the Years"
        , col = 3)

dev.off()