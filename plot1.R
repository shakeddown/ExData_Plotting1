library(sqldf)
data <- read.csv.sql("household_power_consumption.txt", 
                   "select * from file where Date = '1/2/2007' or Date = '2/2/2007'",
                   sep=";")
gap <- as.numeric(data$Global_active_power)
hist(gap,col='red',main="Global Active Power",
     xlab = "Global Active Power (kilowatts)", ylab="Frequency")

