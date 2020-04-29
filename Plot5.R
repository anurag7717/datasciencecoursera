#Code only for Plot5

library(ggplot2)

condition <- grepl("vehicle", SCC[, SCC.Level.Two], ignore.case=TRUE)
vehiclesSCC <- SCC[condition, SCC]
vehiclesNEI <- NEI[NEI[, SCC] %in% vehiclesSCC,]

baltimoreVehiclesNEI <- vehiclesNEI[fips=="24510",]

png("plot5.png")

ggplot(baltimoreVehiclesNEI,aes(factor(year),Emissions)) +
  geom_bar(stat="identity", fill ="#FF9999" ,width=0.75) +
  labs(x="year", y=expression("TOTAL PM "[2.5]*"  EMISSION (10^5 TONS)")) + 
  labs(title=expression("PM "[2.5]*"  Motor Vehicle Source Emissions in Baltimore from 1999-2008"))

dev.off()