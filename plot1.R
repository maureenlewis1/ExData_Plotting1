# reading data file
data <- read.csv("~/Downloads/household_power_consumption.txt", sep=";")

# subsetting data for mentioned date
dateddata <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

## plotting

# histogram for plot1
activepower <- as.numeric(dateddata$Global_active_power)
png("plot1.png")
hist(activepower, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()