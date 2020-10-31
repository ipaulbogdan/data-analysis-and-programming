library(sos)
#1
loggedIslands = log(islands, 10)
hist(loggedIslands) # default breaks is Sturges
hist(islands)

hist(islands, breaks = "Scott") #histogram with scott formula, it has only 4 bins
hist(loggedIslands, breaks = "Scott")

qqnorm(islands) #the qq plot looks like D and it means that our distribution is skewed to the right 

boxplot(islands)
boxplot(loggedIslands)

dotchart(loggedIslands) # log transformation is needed

#in my opinion, dotchart is the most appropriate for islands data






