# Exploratory Data Analysis
# Course project 1
# Plot2 

png("plot2.png", width=480, height=480)
data = read.csv("household_power_consumption.txt",sep=';',header=T,na.strings=c('?','NA','NaN',''))
data1 = data[with(data,data$Date=="1/2/2007" | data$Date=="2/2/2007"),]
data1[[1]]=as.Date(data1[[1]],"%d/%m/%Y")
data1$date_time = strptime(paste(data1$Date, data1$Time, sep=" "), "%Y-%m-%d %H:%M")
plot(data1$date_time,data1$Global_active_power, main="",xlab="", ylab="Global Active Power (kilowatts)",type="l")
dev.off()
