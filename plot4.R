household<-read.csv("household_power_consumption.txt",sep=";")
data1<-household[household$Date=="1/2/2007",]
data2<-household[household$Date=="2/2/2007",]
data<-rbind(data1,data2)
DatenTime<-paste(as.character(data$Date),as.character(data$Time))
data$DatenTime<-as.POSIXct(DatenTime, format = "%d/%m/%Y %H:%M")

png(filename="plot4.png",width=480,height=480)

par(mfrow=c(2,2))
plot(data$DatenTime,as.numeric(as.character(data$Global_active_power)),type="l",ylab="Global Active Power(kilowatts)",xlab="")

plot(data$DatenTime,as.numeric(as.character(data$Voltage)),type="l",ylab="Voltage",xlab="datetime")

plot(data$DatenTime,as.numeric(as.character(data$Sub_metering_1)),type="l",ylim=range(as.numeric(as.character(data$Sub_metering_1))),xlab="",ylab="Energy sub metering")
par(new=TRUE)
plot(data$DatenTime,as.numeric(as.character(data$Sub_metering_2)),type="l",col="red",ylim=range(as.numeric(as.character(data$Sub_metering_1))),xlab="",ylab="Energy sub metering")
par(new=TRUE)
plot(data$DatenTime,as.numeric(as.character(data$Sub_metering_3)),type="l",col="blue 1",ylim=range(as.numeric(as.character(data$Sub_metering_1))),xlab="",ylab="Energy sub metering")
legend(x="topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=c(1,1,1),lwd=c(2.5,2.5,2.5),cex=0.75)


plot(data$DatenTime,as.numeric(as.character(data$Global_reactive_power)),type="l",ylab="Global_reactive_power",xlab="datetime")

dev.off()


