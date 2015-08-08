# Loading the data
dataSet <- read.csv('data/housold_power_consumption_2007-02-01_2017-02-02.csv')

# png Device
png(filename = "plot1.png")

# plotting the historgram
hist(dataSet$Global_active_power, col = 'red', xlab = 'Global Active Power (kilowatts)', main = "Global Active Power")

# closing the device
dev.off()
