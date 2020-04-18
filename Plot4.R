####### plot 4  #########

# Reading CSV to a local Data frame 
household_power_consumption <- read.csv("C:/Users/casel/Desktop/Coursera/Coursera/household_power_consumption.txt", header=TRUE, sep=";")
# Checking my Data frame data
View(household_power_consumption)
# Selecting date range for study and creating a working data frame
subsetpower <- subset(household_power_consumption,household_power_consumption$Date=="1/2/2007" | household_power_consumption$Date =="2/2/2007")

#Join Date / Time within data range
install.packages("lubridate")
library(lubridate)
DateTime <- dmy_hms(paste(subsetpower$Date, subsetpower$Time))

# Creating Line plot with PNG extension
png("plot2.png", width=480, height=480)


par(mfcol = c(2, 2), mar = c(4, 4, 3, 2))


with(subsetpower, {
  # Plot of Global active power through days
  plot(DateTime,
       Global_active_power, 
       type = "l",
       ylab = "Global Active Power",
       xlab = "")
  
  # Plot of energy sub metering
  plot(DateTime,
       Sub_metering_1, 
       type = "l",
       ylab = "Energy sub metering",
       xlab = "")
  lines(DateTime,
        Sub_metering_2, 
        type = "l",
        col = "red")
  lines(DateTime,
        Sub_metering_3, 
        type = "l",
        col = "blue")
  legend("topright", 
         c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
         col = c("black", "red", "blue"),
         lty = c(1, 1, 1),
         bty = "n")
  
  # Plot of Voltage through days
  plot(DateTime,
       Voltage, 
       type = "l",
       ylab = "Voltage")
  
  # Plot of Global reactive power through days
  plot(DateTime,
       Global_reactive_power, 
       type = "l")
})






dev.off()