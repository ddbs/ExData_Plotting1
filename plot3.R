# Multiple line plot

# load data
source('loader.R')

# open png device
png(filename='plot3.png', width = 480, height = 480,  bg = NA)

# plot main line chart 
plot(df$Date_time, df$Sub_metering_1,
     type = 'l',
     xlab = '', 
     ylab = 'Energy sub metering',
     col = 'black')

# add second line plot
lines(df$Date_time, df$Sub_metering_2, 
      col = 'red')

# add third line plot
lines(df$Date_time, df$Sub_metering_3, 
      col = 'blue')

# add legend
legend('topright',
       legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col = c('black', 'red', 'blue'),
       lty = 1)

# close png device
dev.off()