#Additional way to do NR995 HW9 task 3 using dplyr
#Easier way to do it: (still need to take out NA's, use mutate to create a new column with body wt:brain size ratio)
library(dplyr)
new<- msleep%>% 
  group_by(vore) %>% 
  summarize(mean_bbr=mean(bodywt/brainwt), se=) %>%
  as.data.frame
