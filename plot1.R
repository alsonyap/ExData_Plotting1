# Reading the file in
power <- read.table("household_power_consumption.txt", 
                    sep = ";", header = TRUE, skip = 66600, nrows = 3000)
# Inputs the actual names of the dataset
names(power) <- names(read.table("household_power_consumption.txt", sep = ";",
                                 header = TRUE, nrow = 1))

# Convert the date column into the Date class 
power$Date <- as.Date(power$Date, format = "%d/%m/%Y")

# Extracts the rows relevant in 1st Feb 2007 and 2nd Feb 2007
power <- power[(power$Date == "2007-02-01" | power$Date == "2007-02-02"),]

# Concatenate the date and time into one single column
power$DateTime <- paste(power$Date, power$Time)

# Convert into a date and time format with strptime
power$DateTime <- strptime(power$DateTime, format = "%Y-%m-%d %H:%M:%S")

# Plots the histogram 
hist(power$Global_active_power, col = "red", main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)")

# Copies to the png device with the specified height and width, then closes it
dev.copy(png, filename = "plot1.png", width = 480, height = 480, units = "px")
dev.off()

