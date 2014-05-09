#Set the Working directory.
setwd('C:/Users/Omar/Documents/R/Files/data_household_power_consumption/')
#Load the downloaded data
power_cons_data <- read.csv('household_power_consumption.txt', na.strings = '?', sep=';')
#Change the Date to a date-format and make a Date_Time column with the POSIXlt format
power_cons_data$Date <- as.Date(power_cons_data$Date, format="%d/%m/%Y")
power_cons_data$Date_time <- strptime(paste(power_cons_data$Date,power_cons_data$Time), format="%Y-%m-%d %H:%M:%S")
#Make a subset of the data with the two dates
power_cons_data_subset <- power_cons_data[power_cons_data$Date=="2007-02-01" | power_cons_data$Date=="2007-02-02", ]
#Open a PNG device, draw the plot without any content and then draw the line on the plot.
png(file ="ExData_Plotting1/Plot2.png")
plot(power_cons_data_subset$Date_time,power_cons_data_subset$Global_active_power, ylab="Global Active Power (kilowatts)",xlab="", type="n")
lines(power_cons_data_subset$Date_time,power_cons_data_subset$Global_active_power)
dev.off()