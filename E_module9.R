#NR995 Module 9 HW
#Jess Steketee and Keir Mcartney
#Last updated: October 25 2017

library(ggplot2)
data("msleep")
?msleep

head(msleep)

#1. How many different diet types are there? 
length(unique(msleep$vore))
#There are 5 different types
