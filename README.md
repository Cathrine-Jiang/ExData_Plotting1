# Read Me

This file will tell you how the plot genetated.

## Data Source

The data is from the <a href="http://archive.ics.uci.edu/ml/">UC Irvine Machine Learning Repository</a>, a popular repository for machine learning datasets. 
In particular, we will be using the "Individual household electric power consumption Data Set".

And the description of 9 variables in the dataset are also found in <a href="https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption">UCI web site</a> 

<li><b>Date</b>: Date in format dd/mm/yyyy </li>
<li><b>Time</b>: time in format hh:mm:ss </li>
<li><b>Global_active_power</b>: household global minute-averaged active power (in kilowatt) </li>
<li><b>Global_reactive_power</b>: household global minute-averaged reactive power (in kilowatt) </li>
<li><b>Voltage</b>: minute-averaged voltage (in volt) </li>
<li><b>Global_intensity</b>: household global minute-averaged current intensity (in ampere) </li>
<li><b>Sub_metering_1</b>: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered). </li>
<li><b>Sub_metering_2</b>: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light. </li>
<li><b>Sub_metering_3</b>: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.</li>
</ol>

## Files in Repo

There are 4 R script and 4 PNG file in this repo. They are named as plot1, plot2, etc. And they are corresponded by the name. 
If you run `plot1.r` and you will get a result same as `plot1.png`.
The R script will download the file itself, so don't need to do it by yourself.

## NOTES
* You need to install and library the _lubridate_ package to run the R script successfully. If you haven't yet, use code below
```{r eval = FALSE}
install.packages("lubridate")
library(lubridate)
```
* As the dataset is really big, so I download and do subset and save it as a new file(which is been doing at first in each R script). Once you have run one script(and not clear the environment), you don't need to do this part again, just skip this part. Where to skip will show clearly in the R script.

* The result of `plot2.r`, `plot3.r` and `plot4.r` may be a little different from the correspond png file in the repo. This is because we have different local language.

Some part of this **README** is copied from the original which is done by <a href="https://github.com/rdpeng">Roger D.Peng</a>.