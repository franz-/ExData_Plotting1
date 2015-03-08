# Exploratory Data Analysis
# Course project 1
# Plot4 

png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2))
data = read.csv("household_power_consumption.txt",sep=';',header=T,na.strings=c('?','NA','NaN',''))
data1 = data[with(data,data$Date=="1/2/2007" | data$Date=="2/2/2007"),]
data1[[1]]=as.Date(data1[[1]],"%d/%m/%Y")
data1$date_time = strptime(paste(data1$Date, data1$Time, sep=" "), "%Y-%m-%d %H:%M")

#plot 1
plot(data1$date_time,data1$Global_active_power, main="",xlab="", ylab="Global Active Power",type="l")

#plot2
plot(data1$date_time,data1$Voltage, main="",xlab="datetime",ylab="Voltage",type="l")

#plot3
plot(data1$date_time,data1$Sub_metering_1, main="",xlab="", ylab="Energy sub metering",type="l")
lines(data1$date_time,data1$Sub_metering_2, main="",xlab="", ylab="",type="l",col="red")
lines(data1$date_time,data1$Sub_metering_3, main="",xlab="", ylab="",type="l",col="blue")
legend("topright", col = c("black","red", "blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),bty='n')

#plot4
plot(data1$date_time,data1$Global_reactive_power, main="",xlab="datetime", ylab="Global_reactive_power",type="l")

dev.off()
