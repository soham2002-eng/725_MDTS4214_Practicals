rm(list=ls())
set.seed(123)
x=list()
y=list()
e=list()
Y=list()
for(i in 1:5)
{
  x[[i]]=runif(50,5,10)
  e[[i]]=rnorm(50,0,4)
  y[[i]]=2+3*x[[i]]+e[[i]]
  Y[[i]]=2+3*x[[i]]
}
x
y
e
Y
par(mfrow=c(5,2))
plot(x[[1]],Y[[1]],main='Population Regression Line')
plot(x[[2]],Y[[2]],main='Population Regression Line')
plot(x[[3]],Y[[3]],main='Population Regression Line')
plot(x[[4]],Y[[4]],main='Population Regression Line')
plot(x[[5]],Y[[5]],main='Population Regression Line')
plot(x[[1]],y[[1]],main = 'Least Square Regression Line')
abline(lm(Y[[1]]~x[[1]]))
plot(x[[2]],y[[2]],main = 'Least Square Regression Line')
abline(lm(Y[[2]]~x[[2]]))
plot(x[[3]],y[[3]],main = 'Least Square Regression Line')
abline(lm(Y[[3]]~x[[3]]))
plot(x[[4]],y[[4]],main = 'Least Square Regression Line')
abline(lm(Y[[4]]~x[[4]]))
plot(x[[5]],y[[5]],main = 'Least Square Regression Line')
abline(lm(Y[[5]]~x[[5]]))