# Plot (4):

# Set the plots layout and adjusts the margins
par(mfrow = c(2,2), mar = c(4,4,3,1), oma = c(1,0,0,0))

# Plot 1 (top left)
with(power, plot(DateTime, Global_active_power, type = "l", 
                 ylab = "Global Active Power", xlab = ""))

# Plot 2 (top right)
with(power, plot(DateTime, Voltage, type = "l", ylab = "Voltage", xlab = "datetime"))

# Plot 3 (bottom left)
with(power, plot(DateTime, Sub_metering_1, type = "n", ylab = "Energy sub metering", xlab = ""))

# Plots the 3 line graphs onto the created layout
with(power, lines(DateTime, Sub_metering_1))
with(power, lines(DateTime, Sub_metering_2, col = "red"))
with(power, lines(DateTime, Sub_metering_3, col = "blue"))

# Adds the legend
legend("topright", lty = 1, col = c("black", "red", "blue"),
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n",
       x.intersp = 0.2, y.intersp = 0.2, inset = c(-0.3,-0.2))

# Plot 4 (bottom right)
with(power, plot(DateTime, Global_reactive_power, type = "l", xlab = "datetime"))

# Plots onto the png graphics device
dev.copy(png, filename = "plot4.png", width = 480, height = 480, units = "px")
dev.off()
