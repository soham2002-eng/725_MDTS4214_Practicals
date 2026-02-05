rm(list=ls())
x=list()
e=list()
y=list()
fit=list()
betanothat=array(0)
betahat=array(0)
R=1000
for(i in 1:R)
{
x[[i]]=runif(50,0,1)
e[[i]]=rnorm(50,0,1)
y[[i]]=2+3*x[[i]]+e[[i]]
fit[[i]]=lm(y[[i]]~x[[i]])
betanothat[i]=coef(fit[[i]])[1]
betahat[i]=coef(fit[[i]])[2]
}
x
e
y
betanothat
betahat
fit
mean(betanothat)
mean(betahat)
# We see that the mean of simulated betanothat and betahat is approximately close to 2 and 3 
# respectively