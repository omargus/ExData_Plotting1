#Set the Working directory.
setwd('C:/Users/Omar/Documents/R/Files/data_household_power_consumption/')
#Load the downloaded data
power_cons_data <- read.csv('household_power_consumption.txt', na.strings = '?', sep=';')
#Change the Date to a date-format
power_cons_data$Date <- as.Date(power_cons_data$Date, format="%d/%m/%Y")
#Make a subset of the data with the two dates
power_cons_data_subset <- power_cons_data[power_cons_data$Date=="2007-02-01" | power_cons_data$Date=="2007-02-02", ]
#Open a PNG device, draw the plot 
png(file ="ExData_Plotting1/Plot1.png")
hist(power_cons_data_subset$Global_active_power, col="red",main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()