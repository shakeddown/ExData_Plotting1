library(sqldf)
data <- read.csv.sql("household_power_consumption.txt", 
                     "select * from file where Date = '1/2/2007' or Date = '2/2/2007'",
                     sep=";")
#set params
par(mfrow=c(2,2))

#draw first plot
times <- strptime(paste(data$Date,data$Time) ,"%d/%m/%Y %H:%M:%S")
plot(times,as.numeric(data$Global_active_power),type="l",xlab = "",
     ylab = "Global Active Power")

#draw second plot
plot(times,as.numeric(data$Voltage),type="l",
     xlab="datetime",ylab = "Voltage")

#draw the third plot
plot(times,as.numeric(data$Sub_metering_1),type="l",
     xlab = "",ylab="Energy sub metering")
lines(times,as.numeric(data$Sub_metering_2),col="red")
lines(times,as.numeric(data$Sub_metering_3),col="blue")
legend("topright",
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col=c("black","red", "blue"),lty= 1,cex=0.5)

#draw fourth plot
plot(times,as.numeric(data$Global_reactive_power),
     type="l",xlab="datetime",ylab = "Global_reactive_power")

