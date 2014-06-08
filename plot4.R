# June 08,2014 : CD
#Coursera - Exploratory Data Analysis  
#Course Project 1 - Plot4

##reading file
febPowerConsumpData<- read.table("./Data/01-02_Feb_2007.txt", sep = ";", header = T, na.strings = "?")

##converting the Date and Time variables to Date/Time
x<- paste( febPowerConsumpData$Date,  febPowerConsumpData$Time)
febPowerConsumpData$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")


##Plot 4

##Constructing a png file 480 X 480
png("plot4.png",width=480, height=480)


##creating matrix of 2 by 2 to plot 4 graphs in 1
par(mfrow = c(2,2))

## 1-1
plot(febPowerConsumpData$DateTime,febPowerConsumpData$Global_active_power, 
     type = "l", 
     xlab = "", 
     ylab = "Global Active Power"
)

## 1-2

plot(febPowerConsumpData$DateTime, febPowerConsumpData$Voltage, 
     type = "l",  
     xlab = "datetime",
     ylab = "Voltage"
)

## 2-1
plot(febPowerConsumpData$DateTime, febPowerConsumpData$Sub_metering_1, 
     type = "l",xlab = "", ylab = "Energy sub metering")

points(febPowerConsumpData$DateTime, febPowerConsumpData$Sub_metering_2, 
       type = "l",col = "red")

points(febPowerConsumpData$DateTime, febPowerConsumpData$Sub_metering_3,
       type = "l", col = "blue")

legend("topright",
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty=c(1,1,1), bty = "n",
       col = c("black", "red", "blue"), 
)


## 2-2
plot(febPowerConsumpData$DateTime, febPowerConsumpData$Global_reactive_power,
     type = "l", 
     ylim = c(0, 0.5),
     xlab = "datetime", 
     ylab = "Global_reactive_power"
)


dev.off()