#My Open data story
#Dataset of adult income
library(ggplot2)
#load the dataset
df <- read.csv("/home/pallavi/Downloads/adult.csv",header = TRUE)
#summary of the dataset
summary(df)
#plot Rplot1 that shows us that a very few women earn more than 50k than compared to men.
ggplot(df, aes(gender)) + geom_bar(aes(fill= income), alpha=1)
#Digging into the issue we find that women soend less number of years in 
#education as compared to men.
#Though the median is comparable for both men and women
#Rplot2 below
boxplot(df$`educational.num` ~ df$gender,
        xlab = "Gender",
        ylab = "Education Level")
#the end of the story

