
#Explorartory Data Analysis Using R

# Load the required packages

require(ggplot2) 
library(dplyr) 
library(magrittr)

# Load the dataset

crash_dataset <- read.csv("/Users/asharani/Downloads/US_crashdata.csv")

# Define the output PDF file
pdf("/Users/asharani/Desktop/crash_analysis_plots.pdf")

#BAR CHART 
# Group the data by state and count the number of crashes
crash_by_year <- crash_dataset %>% 
  group_by(x_year) %>%
summarize(total_number_crashes = n())

# Create a bar chart of the total crashes by state

bar_chart<-ggplot(crash_by_year, aes(x = x_year, y = total_number_crashes)) +
geom_bar(stat = "identity", fill = "steelblue") + ggtitle("Number of
Crashes by Year") + xlab("x_year") + ylab("Total Crashes") +
theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Print the bar chart to the PDF
print(bar_chart)

#HISTOGRAM 
# Create a histogram of crash severity ggplot(crash_dataset,
histogram<-ggplot(crash_dataset, aes(x = x_mais)) +
  geom_histogram(binwidth = 1, fill = "steelblue", color = "white") +
  ggtitle("Crash severity distribution") +
  xlab("Severity") +
  ylab("Count")
# Print the bar chart to the PDF
print(histogram)

# Group the data by Age and count the number of crashes
Crash_by_age <- crash_dataset %>% 
  group_by(x_age) %>%
summarize(total_number_crashes = n())

# Create a bar chart with stacked bars of the crash types

bar_chart_age<-ggplot(crash_by_age, aes(x = x_age, y = total_number_crashes, fill =
x_age)) + geom_bar(stat = "identity", color = "white") + ggtitle("Number
of Crashes by Age group") + xlab("Age") + ylab("Total Crashes") +
theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))

# Print the bar chart by age group to the PDF
print(bar_chart_age)

# Close the PDF device
dev.off()






