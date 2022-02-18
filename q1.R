#Data per year
totalEmissions <- tapply(NEI$Emissions, NEI$year, sum)

# plotting
barplot(totalEmissions, xlab = "Year", ylab = "Total Emission (ton)", 
        main = "Total Emission per year")