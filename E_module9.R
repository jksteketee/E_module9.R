#NR995 Module 9 HW
#Jess Steketee and Keir Mcartney
#Last updated: October 25 2017

library(ggplot2)
data("msleep")
?msleep

head(msleep)

#1. How many different diet types are there? 
#Make a boxplot comparing the daily sleep totals across the vore categories, excluding rows that 
#do not have data in the vore column. Remember to include informative axis labels. 
#Briefly describe in 1-2 sentences the major patterns in the plot.

length(unique(msleep$vore))
length(unique(msleep$vore))

#There are 4 different diet types: Carni, omni, herbi, insecti and there are some NA's as well. 
#Boxplot: 




ggplot(bar.sum, aes(x=))