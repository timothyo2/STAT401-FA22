#Author: Timothy Outing II, Date: 9/19/22, Purpose: Perform correlation analysis

library("ggpubr")
#Loading sample data 
my_data <- mtcars
ggscatter(my_data, x = "gear", y = "disp", add = "reg.line", conf.int = TRUE, cor.coef = TRUE, cor.method = "pearson", xlab = "Gears (1-4)", ylab = "Volume (Cubic Inches)")
res <- cor.test(my_data$gr, my_data$dsp, method = "pearson")
res