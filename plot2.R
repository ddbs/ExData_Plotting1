# Line plot

# load data
source('loader.R')

# open png device
png(filename='plot2.png', width = 480, height = 480,  bg = NA)

# plot line chart
plot(df$Date_time, df$Global_active_power,
     type='l',
     xlab='',
     ylab='Global Active Power (kilowatts)')

# close png device
dev.off()