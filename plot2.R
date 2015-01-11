household<-read.csv("household_power_consumption.txt",sep=";")
data1<-household[household$Date=="1/2/2007",]
data2<-household[household$Date=="2/2/2007",]
data<-rbind(data1,data2)
DatenTime<-paste(as.character(data$Date),as.character(data$Time))
data$DatenTime<-as.POSIXct(DatenTime, format = "%d/%m/%Y %H:%M") 

png(filename="plot2.png",width=480,height=480)
plot(data$DatenTime,as.numeric(as.character(data$Global_active_power)),type="l",ylab="Global Active Power(kilowatts)",xlab="")

dev.off()
