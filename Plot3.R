#Code only for Plot3

library(ggplot2)
baltimoreNEI <- NEI[fips=="24510",]

png("plot3.png")

ggplot(baltimoreNEI,aes(factor(year),Emissions,fill=type)) +
  geom_bar(stat="identity") +
  facet_grid(.~type,scales = "free",space="free") + 
  labs(x="YEAR", y=expression("TOTAL PM  "[2.5]*"  EMISSION (TONS)")) + 
  labs(title=expression("PM "[2.5]*" Emissions, Baltimore City 1999-2008 by Source Type"))

dev.off()