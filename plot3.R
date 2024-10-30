assign1<-read.table("C:/Users/bhage/Dropbox/Brent/Sabbatical_Coursework_2024/Exploratory_Data_Analysis/Assign1/household_power_consumption.txt",header=TRUE,sep=";")
Date<-as.Date((assign1$Date))
Time<-as.POSIXct(assign1$Time,format="%H:%M:%S")
Global_active_power<-as.numeric(assign1$Global_active_power)
Global_reactive_power<-as.numeric(assign1$Global_reactive_power)
Voltage<-as.numeric(assign1$Voltage)
Global_intensity<-as.numeric(assign1$Global_intensity)
Sub_metering_1<-as.numeric(assign1$Sub_metering_1)
Sub_metering_2<-as.numeric(assign1$Sub_metering_2)
Sub_metering_3<-as.numeric(assign1$Sub_metering_3)
#Plots must refer to the following 2 days: 2007-02-01 and 2007-02-02
assign1_feb<-assign1[assign1$Date == "1/2/2007" | assign1$Date == "2/2/2007",] #subset to correct dates

#plot 3 code
png(file="C:/Users/bhage/Dropbox/Brent/Sabbatical_Coursework_2024/Exploratory_Data_Analysis/Assign1/plot3.png",width=480,height=480)
with(assign1_feb, {
  plot(DateTime, Sub_metering_1, type="l", col="black", lwd=1, ylab="Energy sub metering",xaxt = "n", xlab="")
  lines(DateTime, Sub_metering_2, type="l", col="red", lwd=1, ylab="",xaxt = "n", xlab="")
  lines(DateTime, Sub_metering_3, type="l", col="blue", lwd=1, ylab="",xaxt = "n", xlab="")
  axis(1, at=c(1170313200, 1170399600,1170486000),labels=c("Thu","Fri","Sat"))
  legend("topright", col=c("black","red","blue"), lty=c(1,1,1), pch=c(NA_integer_,NA_integer_,NA_integer_), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
})
dev.off()