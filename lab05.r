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

#2
#a)
plot(stackloss$stack.loss, stackloss$Air.Flow)
plot(stackloss$stack.loss, stackloss$Water.Temp)
plot(stackloss$stack.loss, stackloss$Acid.Conc.)
#b)
pairs(stackloss[,1:4])

#3
plot(Orange$circumference, Orange$age)
lines(Orange$circumference, Orange$age, data = Orange, subset = Tree == "1", lty = 1)
lines(Orange$circumference, Orange$age, data = Orange, subset = Tree == "2", lty = 2)
lines(Orange$circumference, Orange$age, data = Orange, subset = Tree == "3", lty = 3)
lines(Orange$circumference, Orange$age, data = Orange, subset = Tree == "4", lty = 4)
lines(Orange$circumference, Orange$age, data = Orange, subset = Tree == "5", lty = 5)
legend("bottomright", lenged = paste("Tree", 1:5), lty = 1:5, lwd = c(1,1,2,1,1), pch = 1:5)

#4

rnorm <- rnorm(1000)

par(mfrow=c(3,2), oma=c(0,0,2,0))

hist(rnorm, breaks = "Sturges", main = "Histogram-Sturges")
hist(rnorm, breaks = "FD", main = "Histogram-FD")
plot(density(rnorm), main = "Density-Estimate")
boxplot(rnorm, main = "Boxplot")
qqnorm(rnorm, main = "QQ Plot"); qqline(rnorm)
ts.plot(rnorm, main = "Trace Plot")

#5
summary(EuStockMarkets)
Z = EuStockMarkets

par(mfrow=c(3,2), oma=c(0,0,2,0))

hist(Z, breaks = "Sturges", main = "Histogram-Sturges")
hist(Z, breaks = "FD", main = "Histogram-FD")
plot(density(Z), main = "Density-Estimate")
boxplot(Z, main = "Boxplot")
qqnorm(Z, main = "QQ Plot"); qqline(rnorm)
ts.plot(Z, main = "Trace Plot")

#I think that that trace plot is the best option. We can easily see that markets are
#correlated and they tend to go up over the time 