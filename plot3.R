# Exploratory Data Analysis
# Course project 1
# Plot3 

png("plot3.png", width=480, height=480)
data = read.csv("household_power_consumption.txt",sep=';',header=T,na.strings=c('?','NA','NaN',''))
data1 = data[with(data,data$Date=="1/2/2007" | data$Date=="2/2/2007"),]
data1[[1]]=as.Date(data1[[1]],"%d/%m/%Y")
data1$date_time = strptime(paste(data1$Date, data1$Time, sep=" "), "%Y-%m-%d %H:%M")
plot(data1$date_time,data1$Sub_metering_1, main="",xlab="", ylab="Energy sub metering",type="l")
lines(data1$date_time,data1$Sub_metering_2, main="",xlab="", ylab="",type="l",col="red")
lines(data1$date_time,data1$Sub_metering_3, main="",xlab="", ylab="",type="l",col="blue")
legend("topright", col = c("black","red", "blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1))
dev.off()
