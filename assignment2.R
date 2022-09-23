#Author: Timothy Outing, Purpose: Run One-way ANOVA with three variables

#Access the web page for file called poisons.csv
PATH <- "https://raw.githubusercontent.com/guru99-edu/R-Programming/master/poisons.csv"  

#Read the file in R
df <- read.csv(PATH)  

#Load the package ggplot
library(ggplot2)

#Plots the time vs poison data
ggplot(df, aes(x = poison, y = time, fill = treat)) + geom_boxplot() + geom_jitter(shape = 15, color = "steelblue", position = position_jitter(0.21)) + theme_classic()

# Apply the function for calculating ANOVA test
anova_two_way <- aov(time~time+poison, data = df) 
summary(anova_two_way)

