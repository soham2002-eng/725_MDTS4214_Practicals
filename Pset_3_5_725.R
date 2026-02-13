# Problem set 3(5)
library(ggplot2)
attach(diamonds)
fit=lm(price~cut)
summary(fit)
fit
fit1=lm(price~cut+table)
fit1
summary(fit1)
table(diamonds)
table(diamonds)
lm(price~relevel(factor(as.character(cut)),ref = "Ideal"))
library(MASS)
attach(fgl)
fgl
fit2=lm(RI~Na+Mg+Al+Si+K+Ca+Ba+Fe)
fit2
summary(fit2)