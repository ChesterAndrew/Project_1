# Reading CSV to a local Data frame 
household_power_consumption <- read.csv("C:/Users/casel/Desktop/Coursera/Coursera/household_power_consumption.txt", header=TRUE, sep=";")
# Checking my Data frame data
View(household_power_consumption)
# Selecting date range for study and creating a working data frame
subsetpower <- subset(household_power_consumption,household_power_consumption$Date=="1/2/2007" | household_power_consumption$Date =="2/2/2007")
# Checking top and bottom data row
head(subsetpower)
tail(subsetpower)
# Checkind data types
str(subsetpower)
# Setting variable to a numeric format
GAPower <- as.numeric(subsetpower$Global_active_power)
str(GAPower)
# Creating histogram plot with PNG extension
png("plot1.png", width=480, height=480)
hist(GAPower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

dev.off()
