## this code will draw the plot 1 for the first assignment of Exploratory Data
## analysis, which is a histogram of Global Active Power

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
## the first plot is a histogram of Global Active Power
png("plot1.png" , width = 480 , height = 480 , units = "px")
par("mar" = c(5, 4, 4, 2))
hist(extract$Global_active_power , main = "Global Active Power" , col = "red" , 
     border = "black" , xlab = "Global Active Power(kilowatts)")
dev.off()
