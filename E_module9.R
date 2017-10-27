#NR995 Module 9 HW
#Jess Steketee and Keir Macartney
#Last updated: October 27 2017

library(ggplot2)
data("msleep")
?msleep

head(msleep)
list(msleep)
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
#There is much more variation in total sleep in both carnivores and herbivores, than omnivores.. 

### TASK 2 ###
msleep$bodywt
msleep$sleep_cycle
msleep$logbw <-log(msleep$bodywt)
plot(msleep$logbw, msleep$sleep_cycle, xlab="log body size", ylab="sleep cycle length", na.rm=TRUE)

        
ggplot(data=subset(msleep, !is.na(conservation)), aes(x=logbw, y=sleep_cycle, group=conservation, color=conservation, na.rm=T))+
          geom_point()+
          stat_smooth(method="lm", se=F)+
          facet_wrap(~conservation)+labs(x="log body size", y= "sleep cycle length")

## As body size increases sleep cycle length appears to increase as well. We can only make conclusions about 2 conservation types as the rest have no data or to little data. 
  
### TASK 3 ###
se <- function(x){
semean <- sd(x, na.rm=TRUE)/sqrt(length(na.omit(x)))
return(semean)
}

brain_body_ratio<-function(msleep){
msleep <- msleep[!is.na(msleep$brainwt) & !is.na(msleep$bodywt) & !is.na(msleep$vore), ] 
bbmean <- as.data.frame(tapply(msleep$brainwt/msleep$bodywt, msleep$vore, mean))
bbse <- as.data.frame(tapply(msleep$brainwt/msleep$bodywt, msleep$vore, se)) 
brain_body_ratio1<-cbind(bbmean, bbse)
colnames(brain_body_ratio) <-c("brain_body_mean", "brain_body_se")
brain_body_ratio1$vore<-rownames(brain_body_ratio1)
return(brain_body_ratio1)
}
        
        
brain_body_r<- brain_body_ratio(msleep)

brain_body_r

## We are not sure how to rename the very first column in this data set? Is it something to do with the cbind function? 

## Coded side by side and shared ideas and code. We used Git and Github to move code accross to each other. 








