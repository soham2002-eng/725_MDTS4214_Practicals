library(MASS)
data(Boston)
attach(Boston)
Boston
summary(lm(Boston$medv~Boston$lstat))
summary(lm(Boston$medv~Boston$black))
summary(lm(Boston$medv~Boston$nox))
summary(lm(Boston$medv~Boston$crim))
# On the basis of four regression lines the fit between median value of owner occupied household
# and the percentage of the lowest status of the population is the best fit