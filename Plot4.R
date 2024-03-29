## Exploratory Data Analysis Peer-graded Assignment Course Project1
## Plot 4

## Create Four Plots

par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0)) 

with(Energy_data, {
  plot(Global_active_power ~ dateTime, type= "l", ylab= "Global Active Power (kilowatts)", xlab="")
  plot(Voltage ~ dateTime, type= "l", ylab= "Voltage(volt)", xlab= "")
  plot(Sub_metering_1 ~ dateTime, type= "l", ylab= "Global Active Power (kilowatts)", xlab="")
  lines(Sub_metering_2 ~ dateTime, col= "Red")
  lines(Sub_metering_3 ~ dateTime, col= "Blue")
  legend("topright", col= c("black", "red", "blue"), lwd=c(1,1,1), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),y.intersp=0.2,x.intersp=0.2,cex=0.4,bty="n")
  plot(Global_reactive_power ~ dateTime, type= "l", ylab= "Global Reactive Power(kilowatts)", xlab= "")
})

## Save file and close the device
dev.copy(png, "/Users/nickychu/Desktop/plot4.png", width=480, height=480)
dev.off()

