# June 08,2014 : CD
#Coursera - Exploratory Data Analysis  
#Course Project 1 - Plot1

##reading file
febPowerConsumpData<- read.table("./Data/01-02_Feb_2007.txt", sep = ";", header = T, na.strings = "?")

##converting the Date and Time variables to Date/Time
x <- paste( febPowerConsumpData$Date,  febPowerConsumpData$Time)
febPowerConsumpData$DateTime <- strptime(x, "%d/%m/%y %H:%M:%S")

##Constructing a png file 480 X 480
png("plot1.png",width=480, height=480)

hist(febPowerConsumpData$Global_active_power, 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)", 
     ylab = "Frequency", 
     col = "red", 
     xaxp = c(0, 6,3), 
     ylim = c(0,1200)
     )

dev.off()
