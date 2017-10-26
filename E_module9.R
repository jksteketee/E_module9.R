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
unique(msleep$vore)
list(msleep$sleep_total)
#There are 4 different diet types: Carni, omni, herbi, insecti and there are some NA's as well. 
#Boxplot: 

msleep$vore1<- na.omit(msleep$vore)

boxplot(msleep$sleep_total[msleep$vore !="NA"]~ msleep$vore[msleep$vore !="NA"], 
        ylab= "Sleep Total", xlab= "Diet Type")

# Insectivores appear to get the most amount of sleep on average, while the other three types are roughly similiar. 
#There is much more variation in total sleep in both carnivores and herbivores, than omnivores. 



       
  