library(sqldf)
library(lubridate)

# set working dir
setwd('/home/dario/Documents/Data/Courses/CourseraDataScience/johnshopkinsdatascience/04_eda/ExData_Plotting1/')

# read partial data
filename <- "household_power_consumption.txt"
runsql <- "select * from file where Date in ('1/2/2007', '2/2/2007')"
df <- read.csv.sql(filename, runsql, eol = "\n", header = TRUE, sep = ';')

# replace missing values
df[df=='?'] <- NA

# process date and time
df$Date <- dmy(df$Date)
df$Time <- hms(df$Time)
df$Date_time <- df$Date + df$Time  # new column
