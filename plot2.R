library(dplyr)

mydata<-read.table("household_power_consumption.txt",sep=";", header=TRUE)
mydata<-subset(mydata,mydata$Date=="1/2/2007" | mydata$Date== "2/2/2007")
png("plot2.png",width=480,height=480)
datetime<-strptime(paste(xx$Date,xx$Time),"%d/%m/%Y %H:%M:%S")
plot(datetime,as.numeric(xx$Global_active_power), type="l",xlab="" ,ylab = "Global Active Power (KiloWatt)" )
dev.off()