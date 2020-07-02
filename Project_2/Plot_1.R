if(!exists("NEI")){
  NEI <- readRDS("./data/summarySCC_PM25.rds")
}
if(!exists("SCC")){
  SCC <- readRDS("./data/Source_Classification_Code.rds")
}

aggregatedTotalByYear <- aggregate(Emissions ~ year, NEI, sum)

png('Plot_1.png')
barplot(height=aggregatedTotalByYear$Emissions, names.arg=aggregatedTotalByYear$year, xlab="Years", ylab=expression('Total PM'[2.5]*' emission'),main=expression('Total PM'[2.5]*' Emissions of different years'))
dev.off()