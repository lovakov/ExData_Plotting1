data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
str(data)
head(data)
data$gDate <- as.Date(data$Date, "%d/%m/%Y")

d1 <- as.Date("2007-02-01")
unclass(d1)
d2 <- as.Date("2007-02-02")
unclass(d2)
data$gDate <- unclass(data$gDate)
df <- subset(data, gDate == 13545 | gDate == 13546)

plot(as.numeric(df$Global_active_power), type="l", ylab = "Global Active Power (kilowatts)", xlab="")
