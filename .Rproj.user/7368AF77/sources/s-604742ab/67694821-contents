##plot3.R

# Open PNG device to save the plot
png(filename = "plot3.png", width = 480, height = 480)

# plot sub metering 1

with(epc_filt,
plot(x = DateTime,
     y = Sub_metering_1,
     type = "l",
     xlab = "",
     ylab = "Energy sub meetering"))

# add 2 and 3
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

#add legend
legend("topright",
       legend = names(epc_filt[,7:9]),
       lty = 1,
       col = c("black", "red", "blue")
       )

# Close the device
dev.off()