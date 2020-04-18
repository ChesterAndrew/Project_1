####### plot 2 #########

# Reading CSV to a local Data frame 
household_power_consumption <- read.csv("C:/Users/casel/Desktop/Coursera/Coursera/household_power_consumption.txt", header=TRUE, sep=";")
# Checking my Data frame data
View(household_power_consumption)
# Selecting date range for study and creating a working data frame
subsetpower <- subset(household_power_consumption,household_power_consumption$Date=="1/2/2007" | household_power_consumption$Date =="2/2/2007")

View(subsetpower)
GAPower <- as.numeric(subsetpower$Global_active_power)
str(GAPower)


#Join Date / Time within data range
install.packages("lubridate")
library(lubridate)
DateTime <- dmy_hms(paste(subsetpower$Date, subsetpower$Time))


# Creating Line plot with PNG extension
png("plot2.png", width=480, height=480)
plot(DateTime,GAPower,type = "l", ylab = "Global Active Power (kilowatts)",  xlab = "")
dev.off()
