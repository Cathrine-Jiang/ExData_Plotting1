## this code will draw the plot 2 for the first assignment of Exploratory Data
## analysis, which is a broken line graph of Global Active Power

## first, download the dataset and unzip it
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(url , destfile = "EPC.zip")
unzip("EPC.zip")
## ---if you already download and unzip the dataset, skip the code above---

## second, read in the dataset and subset as needed
## also save the subset as a new file to save the reading time
data <- read.csv("household_power_consumption.txt" , na.strings = "?" , sep = ";")
data$Date <- dmy_hms(paste(data$Date , data$Time))
extract <- data[grep("2007-02-01|2007-02-02" , data$Date) , ] 
write.csv(extract , file = "sub.csv")
## ---if you already run another R script in this repo, skip the code above---

## third, draw the plot as asked
## the second plot is a broken line graph of Global Active Power
png("plot2.png") ## the default value is what the assignment asked
with(extract, plot(Date , Global_active_power, type = "n" , xlab = "" , 
                   ylab = "Global Active Power(kilowatts)"))
with(extract , lines(Date , Global_active_power))
dev.off()
