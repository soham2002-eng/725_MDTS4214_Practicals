# Problem set 4(1)
install.packages("ISLR")
library(ISLR)
attach(Credit)
Credit
fit=lm(Balance~Age+Limit+Rating)
fit
summary(fit)
par(mfrow=c(2,1))
plot(Limit~Age,main='Scatterplot',xlab='Age',ylab='Limit')
plot(Limit~Rating,main='Scatterplot',xlab='Rating',ylab='Limit')
fit1=lm(Balance~Age+Limit)
fit1
summary(fit1)
fit2=lm(Balance~Age+Rating+Limit)
fit2
summary(fit2)
fit3=lm(Balance~Rating+Limit)
fit3
summary(fit3)
# Problem set 4(2)
library(MASS)
attach(Boston)
data=Boston
data
fit=lm(medv~crim+nox+ptratio+black)
fit
summary(fit)
# Detecting outliers
outlier1=boxplot(crim,plot=F)$out
outlier1
outlier2=boxplot(nox,plot=F)$out
outlier2
outlier3=boxplot(ptratio,plot=F)$out
outlier3
outlier4=boxplot(black,plot=F)$out
outlier4
# Detecting Leverage
lval=hatvalues(fit)
lval
p=length(coef(fit))
n=nrow(data)
tsh=2*p/n
# Detecting high leverage points
hlp=which(lval>tsh)
hlp
# Detecting Influential Points
cooks.distance(fit)
