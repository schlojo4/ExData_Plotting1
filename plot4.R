## plot4.R

# Open PNG device to save the plot
png(filename = "plot4.png", width = 480, height = 480)

#set par for 2x2 plots
par(mfrow = c(2,2))

# Plot 1 of 4
with(epc_filt,
     plot(x = DateTime,
          y = Global_active_power,
          type = "l",
          ylab = "Global Active Power (kilowatts)",
          xlab = ""
     )
)


#Plot 2 of 4
with(epc_filt,
     plot(DateTime,
          Voltage,
          type = "l",
          xlab = "datetime",
          ylab = "Voltage"
     )
)

#Plot 3 of 4
with(epc_filt,
     plot(x = DateTime,
          y = Sub_metering_1,
          type = "l",
          xlab = "",
          ylab = "Energy sub meetering"))

# add to Plot 3
with(epc_filt,
     lines(x = DateTime,
           y = Sub_metering_2,
           type = "l",
           col = "red"
     )
)

with(epc_filt,
     lines(x = DateTime,
           y = Sub_metering_3,
           type = "l",
           col = "blue"
     )
)

#add legend to Plot 3
legend("topright",
       legend = names(epc_filt[,7:9]),
       lty = 1,
       col = c("black", "red", "blue")
)


# Plot 4 of 4
with(epc_filt,
     plot(DateTime,
          Global_reactive_power,
          type = "l")
     )

# Close the device
dev.off()
