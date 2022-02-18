#3) Of the four types of sources indicated by the \color{red}{\verb|type|}type (point, nonpoint, onroad, nonroad) variable, which of these four sources have seen decreases in emissions from 1999???2008 for Baltimore City? Which have seen increases in emissions from 1999???2008? Use the ggplot2 plotting system to make a plot answer this question.
library(ggplot2)

# summing emission data per year per type
data <- aggregate(Emissions ~ year + type, balt, sum)

# plotting
g <- ggplot(data, aes(year, Emissions, color = type))
g + geom_line() +
  geom_point() +
  xlab("Year") +
  ylab(expression("Total PM 2.5 Emissions")) +
  ggtitle("Total Emissions per type in Baltimore")
