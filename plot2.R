library(sqldf)
data <- read.csv.sql("household_power_consumption.txt", 
                     "select * from file where Date = '1/2/2007' or Date = '2/2/2007'",
                     sep=";")
times <- strptime(paste(data$Date,data$Time) ,"%d/%m/%Y %H:%M:%S")
plot(times,as.numeric(data$Global_active_power),type="l",
     ylab="Global Active Power(kilowatts)",xlab = "")