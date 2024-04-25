install.packages("mvtnorm")
library(mvtnorm)

# Generating 5 Random Observation
rmvnorm(n=5,mean=c(10,20,11,16),sigma=diag(c(2,3,4,4.5)) )

library(mvtnorm)
# MLE on Multivatriate Normal
x = rmvnorm(n=5,mean = c(11,15,19),sigma=diag(c(4,5,9)))
# X Bar
colMeans(x)

#Cov Matrix
var(x)
n = ncol(x)
(n-1)*var(x)*n

# Correlation Coefficient

cor(x)

# Assignment WEEK-6

#Q.2
rmvnorm(25,c(2,3),diag(c(9,16)))

#Q.3
pchisq(q=15,df=10,lower.tail = T)

######Q.4
pchisq(q=5,df=3,lower.tail = T)

#Q.5
pt(q=1.9,df=18,lower.tail = F)

#Q.7
pf(q=2.3,df1=12,df2=18,lower.tail = T)

#Q.8
qf(p=0.65,df1=12,df2=18)

#####Q.10

mean(c(1.43,3.27,3.75,1.39))

num = (25)/16
pchisq(q=num,df=3,lower.tail = 0)


