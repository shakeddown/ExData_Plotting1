library(sqldf)
data <- read.csv.sql("household_power_consumption.txt", 
                     "select * from file where Date = '1/2/2007' or Date = '2/2/2007'",
                     sep=";")
plot(times,as.numeric(data$Sub_metering_1),type="l",
        xlab = "",ylab="Energy sub metering")
lines(times,as.numeric(data$Sub_metering_2),col="red")
lines(times,as.numeric(data$Sub_metering_3),col="blue")
legend("topright",
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col=c("black","red", "blue"),lty= 1,cex=0.75)
