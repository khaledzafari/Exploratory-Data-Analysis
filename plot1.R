household_power_consumption <- read.csv("C:/Users/Khaled Al Zafari/Desktop/exdata-data-household_power_consumption/household_power_consumption.txt", sep=";", na.strings="?", stringsAsFactors=FALSE)
subdata$Date <- as.Date(subdata$Date, format = "%d/%m/%Y")
datetime <- paste(as.Date(subdata$Date), subdata$Time)
Datetime <- as.POSIXct(datetime)
subdata= household_power_consumption[which (household_power_consumption$Date=='2/2/2007'| household_power_consumption$Date=='1/2/2007'), ]
hist(subdata$Global_active_power, col="Red", main="Global Active Power" ,xlab = "Global Active Power (kilowatts)")
dev.copy(png,'plot1.png', width = 480, height = 480)
dev.off()