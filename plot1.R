household<-read.csv("household_power_consumption.txt",sep=";")
data1<-household[household$Date=="1/2/2007",]
data2<-household[household$Date=="2/2/2007",]
data<-rbind(data1,data2)
required<-as.numeric(as.character(data$Global_active_power))

png(filename="plot1.png",width=480,height=480)

hist(required,xlab="Global Active Power(kilowatts)",ylab="Frequency",col="red",main=paste("Global","Active Power"))

dev.off()
