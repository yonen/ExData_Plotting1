# Loading the data
dataSet <- read.csv('data/housold_power_consumption_2007-02-01_2017-02-02.csv')
dataSet$DateTime <- strptime(dataSet$DateTime, format="%Y-%m-%d %H:%M:%S")

# png Device
png(filename = "plot3.png")

# plotting 
plot(dataSet$DateTime, dataSet$Sub_metering_1, type="l", xlab = '', ylab = 'Entergy sub metering')
lines(dataSet$DateTime, dataSet$Sub_metering_2, col="red")
lines(dataSet$DateTime, dataSet$Sub_metering_3, col="blue")

# legend
legend('topright', lwd = 1, col = c('black', 'red', 'blue'), legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'))


# closing the device
dev.off()