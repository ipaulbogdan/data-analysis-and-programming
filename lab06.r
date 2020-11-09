library(DAAG)
library(ggplot2)
data(infert)
str(infert)


#1 a)
table(infert$education, infert$spontaneous)

#b
xtabs(infert$induced ~ infert$education + infert$spontaneous)

#c
margin.table(table(infert$education, infert$spontaneous), 1)
margin.table(xtabs(infert$induced ~ infert$education + infert$spontaneous), 1)

#2
virginica = subset(iris,Species == "virginica")
setosa = subset(iris,Species  == "setosa")

cov(virginica$Petal.Length, virginica$Sepal.Length) #positive liniar relationship
cov(setosa$Petal.Length, setosa$Sepal.Length) #positive liniar relationship

cov(iris$Petal.Width, iris$Sepal.Width) #negative liniar relationship

#3
cor(setosa$Petal.Length, setosa$Sepal.Length) 
cor(virginica$Petal.Width, virginica$Sepal.Width)

#both closer to 1 I would say, 
#this means that the two data sets are strongly and positively correlated

#4
summary(possum)
hist(possum$earconch)
malePossum = subset(possum, sex == "m")
femalePossum = subset(possum, sex == "f")

boxplot(malePossum$earconch , femalePossum$earconch, names = c("males", "females"))
histogram(malePossum$earconch)
histogram(femalePossum$earconch)