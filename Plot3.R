
####### plot 3 #########

# Reading CSV to a local Data frame 
household_power_consumption <- read.csv("C:/Users/casel/Desktop/Coursera/Coursera/household_power_consumption.txt", header=TRUE, sep=";")
# Checking my Data frame data
View(household_power_consumption)
# Selecting date range for study and creating a working data frame
subsetpower <- subset(household_power_consumption,household_power_consumption$Date=="1/2/2007" | household_power_consumption$Date =="2/2/2007")

# Creating Multiple Line plot with PNG extension
png("plot3.png", width=480, height=480)

with(subsetpower, {
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
         lty = c(1, 1, 1))
})

dev.off()



