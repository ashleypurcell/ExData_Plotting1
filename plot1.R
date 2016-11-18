plotData <- read.table("data.txt", header=TRUE, sep=";", na.strings="?")

# set time variable
finalData <- plotData[plotData$Date %in% c("1/2/2007","2/2/2007"),]
SetTime <-strptime(paste(finalData$Date, finalData$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
finalData <- cbind(SetTime, finalData)

# Create png File
png(filename = "plot1.png", width = 480, height = 480, units = "px")

# Histogram Plot 1
hist(finalData$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

dev.off()