## this code will draw the plot 3 for the first assignment of Exploratory Data
## analysis, which is a broken line graph of 3 sub metering

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
## the third plot is a broken line graph of 3 sub metering
png("plot3.png")
with(extract , plot(Date , Sub_metering_1 , type = "n" , xlab = "" , 
                    ylab = "Energy sub metering"))
lines(extract$Date , extract$Sub_metering_1)
lines(extract$Date , extract$Sub_metering_2 , col = "red")
lines(extract$Date , extract$Sub_metering_3 , col = "blue")
legend("topright" , legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
       , col = c("black" , "red" , "blue") , lty = 1 , lwd = 2)
dev.off()
