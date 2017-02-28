# Plot (2)

# Plot the global active power by days in a line plot
plot(power$DateTime, power$Global_active_power, type = "l", 
     ylab = "Global Active Power (kilowatts)", xlab = "")

# Copies to the png graphic device and then closes it
dev.copy(png, filename = "plot2.png", width = 480, height = 480, units = "px")
dev.off()