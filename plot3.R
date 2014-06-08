
# June 08,2014 : CD
#Coursera - Exploratory Data Analysis  
#Course Project 1 - Plot3

##reading file
febPowerConsumpData<- read.table("./Data/01-02_Feb_2007.txt", sep = ";", header = T, na.strings = "?")

##converting the Date and Time variables to Date/Time
x<- paste( febPowerConsumpData$Date,  febPowerConsumpData$Time)
febPowerConsumpData$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")

##Constructing a png file 480 X 480
png("plot3.png",width=480, height=480)

plot(febPowerConsumpData$DateTime, febPowerConsumpData$Sub_metering_1, 
     type = "l",xlab = "", ylab = "Energy sub metering")

points(febPowerConsumpData$DateTime, febPowerConsumpData$Sub_metering_2, 
       type = "l",col = "red")

points(febPowerConsumpData$DateTime, febPowerConsumpData$Sub_metering_3,
       type = "l", col = "blue")

legend("topright",
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty=c(1,1,1), 
       col = c("black", "red", "blue"), 
)


dev.off()