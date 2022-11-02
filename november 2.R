#Author: Timothy, November 2, 2022 Purpose: Generate chi-square value

#Reading sample data

data_frame <- read.csv("https://goo.gl/j6lRXD")

#Check the data frame

table(data_frame$treatment, data_frame$improvement)

#Apply the chi-square function 

chisq.test(data_frame$treatment, data_frame$improvement, correct=FALSE)

chisq.test(data_frame$treatment, data_frame$improvement)