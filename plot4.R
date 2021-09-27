library(dplyr)
mydata<-read.table("household_power_consumption.txt",sep=";", header=TRUE)
mydata<-subset(mydata,mydata$Date=="1/2/2007" | mydata$Date== "2/2/2007")
png("plot4.png",width=480,height=480)
datetime<-strptime(paste(xx$Date,xx$Time),"%d/%m/%Y %H:%M:%S")
par(mfrow=c(2,2))

plot(datetime,as.numeric(mydata$Global_active_power),type='l', xlab="",ylab="Global Active Power (kilowatts)")

plot(datetime,as.numeric(mydata$Voltage),type='l', xlab="",ylab="Voltage")

plot(datetime,as.numeric(mydata$Sub_metering_1), type="l",xlab="",ylab="Energy Sub_metering",col="black", ylim=c(0,40))
par(new=TRUE)
plot(datetime,as.numeric(mydata$Sub_metering_2), type="l",xlab="",ylab="",col="red", ylim=c(0,40))
par(new=TRUE)
plot(datetime,as.numeric(mydata$Sub_metering_3), type="l",xlab="",ylab="",col="blue", ylim=c(0,40))
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,col=c("black","red","blue"))

plot(datetime,as.numeric(mydata$Global_reactive_power),type='l', xlab="",ylab="Global reactive power")

dev.off()