# Exploratory Data Analysis
# Course project 1
# Plot1 

png("plot1.png", width=480, height=480)
data=read.csv("household_power_consumption.txt",sep=';',header=T,na.strings=c('?','NA','NaN',''))
data1<-data[with(data,data$Date=="1/2/2007" | data$Date=="2/2/2007"),]
hist(data1$Global_active_power,col = "red",main='Global Active Power',xlab='Global Active Power (kilowatts)')
dev.off()
