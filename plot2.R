# June 08,2014 : CD
#Coursera - Exploratory Data Analysis  
#Course Project 1 - Plot2

##reading file
febPowerConsumpData<- read.table("./Data/01-02_Feb_2007.txt", sep = ";", header = T, na.strings = "?")

##converting the Date and Time variables to Date/Time
x<- paste( febPowerConsumpData$Date,  febPowerConsumpData$Time)
febPowerConsumpData$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")


##Constructing a png file 480 X 480
png("plot2.png",width=480, height=480)


##Plot2

plot(febPowerConsumpData$DateTime,febPowerConsumpData$Global_active_power, 
     type = "l", 
     xlab = "", 
     ylab = "Global Active Power (kilowatts)"
     )

dev.off()

