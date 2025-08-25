## plot2.R

# Open PNG device to save the plot
png(filename = "plot2.png", width = 480, height = 480)

# Plot weekday vs. global active power as line
with(epc_filt,
     plot(x = DateTime,
          y = Global_active_power,
          type = "l",
          ylab = "Global Active Power (kilowatts)",
          xlab = ""
          )
     )

# Close the device
dev.off()

