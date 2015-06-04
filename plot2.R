plot(subdata$Global_active_power ~ Datetime, type = "l",ylab = "Global Active Power (kilowatts)", xlab = "")
dev.copy(png,'plot2.png', width = 480, height = 480)
dev.off()