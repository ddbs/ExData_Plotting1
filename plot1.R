# Histogram plot

# load data
source('loader.R')

# open png device
png(filename='plot1.png', width = 480, height = 480,  bg = NA)

# plot histogram
hist(df$Global_active_power, 
     main='Global Active Power', 
     xlab='Global Active Power (kilowatts)',
     col = 'red')

# close png device
dev.off()