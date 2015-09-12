# Plots 2x2

#load data
source('loader.R')

# open png device
png(filename='plot4.png', width = 480, height = 480,  bg = NA)

#set frame
par(mfcol=c(2,2))

# plot chart 1
plot(df$Date_time, df$Global_active_power,
     type='l',
     xlab='',
     ylab='Global Active Power (kilowatts)')

# plot chart 2 
plot(df$Date_time, df$Sub_metering_1,
     type = 'l',
     xlab = '', 
     ylab = 'Energy sub metering',
     col = 'black')
lines(df$Date_time, df$Sub_metering_2, 
      col = 'red')
lines(df$Date_time, df$Sub_metering_3, 
      col = 'blue')
legend('topright',
       legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col = c('black', 'red', 'blue'),
       lty = 1)

# plot chart 3
plot(df$Date_time, df$Voltage,
     type='l',
     xlab='datetime',
     ylab='Voltage')

# plot chart 4
plot(df$Date_time, df$Global_reactive_power,
     type='l',
     xlab='datetime',
     ylab='Global Reactive Power')

# close png device
dev.off()