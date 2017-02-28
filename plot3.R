# Plot (3):

# Sets the layout of the plot with datetime and sub_metering 1, adds the appropriate labels
with(power, plot(DateTime, Sub_metering_1, type = "n", ylab = "Energy sub metering", xlab = ""))

# Plots the 3 line graphs onto the created layout
with(power, lines(DateTime, Sub_metering_1))
with(power, lines(DateTime, Sub_metering_2, col = "red"))
with(power, lines(DateTime, Sub_metering_3, col = "blue"))

# Adds the legend
legend("topright", lty = 1, col = c("black", "red", "blue"),
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), y.intersp = 0.25, 
       x.intersp = 0.2, cex = 0.9, inset=c(-0.125,-0.04), seg.len = 0.65)

# Copies to the png graphics device and generates it
dev.copy(png, filename = "plot3.png", width = 480, height = 480, units = "px")
dev.off()