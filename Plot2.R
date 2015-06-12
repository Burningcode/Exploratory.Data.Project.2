#Load Data 
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")



#Subset data for Baltimore 
Baltimore <- subset(NEI, fips == '24510')

#Building Exploratory Data Graphic 
aggregatedTotalByYear <- aggregate(Emissions ~ year, Baltimore, sum)

png('plot2.png')
barplot(height=aggregatedTotalByYear$Emissions, names.arg=aggregatedTotalByYear$year, xlab="years", ylab=expression('total PM'[2.5]*' emission'),main=expression('Total PM'[2.5]*' in the Baltimore City, MD emissions at various years'))
dev.off()



