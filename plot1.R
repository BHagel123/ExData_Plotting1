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

#plot 1 code
png(file="C:/Users/bhage/Dropbox/Brent/Sabbatical_Coursework_2024/Exploratory_Data_Analysis/Assign1/plot1.png",width=480,height=480)
hist(as.numeric(assign1_feb$Global_active_power),col="red",breaks=11,
     main = "Global Active Power",
     xlab= "Global Active Power (kilowatts)")
dev.off()