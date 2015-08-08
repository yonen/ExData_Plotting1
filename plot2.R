## Loading the data
dataSet <- read.csv('data/housold_power_consumption_2007-02-01_2017-02-02.csv')
dataSet$DateTime <- strptime(dataSet$DateTime, format="%Y-%m-%d %H:%M:%S")

# png Device
png(filename = "plot2.png")

# plotting 
plot(dataSet$DateTime, dataSet$Global_active_power, type="l", xlab = '', ylab = 'Global Active Power (kilowatts)')


# closing the device
dev.off()