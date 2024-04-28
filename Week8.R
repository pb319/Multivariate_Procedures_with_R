#Testing Mu Vector (One Sample Test, Sigma Known)
age = c(10, 15, 20, 25, 30)
weight = c(35, 40, 45, 50, 55)
hb = c(11, 12, 13, 14, 15)

datam = matrix(nrow = 5,ncol = 3, data = c(age,weight,hb),byrow=T)
mu0 = matrix(nrow = 3,ncol=1, data = c(25,45,13))
sigma = diag(c(1,2,3))
n= nrow(datam)
p= ncol((datam))
bar.x = colMeans(datam)
sigma.inv = solve(sigma)
z2 = n*t(bar.x-mu0)%*% sigma.inv %*% (bar.x-mu0)
p.value = pchisq(q=z2,df=p,lower.tail = FALSE)
p.value

#Testing Mu Vector (One Sample Test, Sigma Unknown)
install.packages("MVTests")
library(MVTests)
age = c(10, 15, 20, 25, 30)
weight = c(35, 40, 45, 50, 55)
hb = c(11, 12, 13, 14, 15)
datam = matrix(nrow = 5,ncol = 3, data = c(age,weight,hb),byrow=T)
mu0 = matrix(nrow = 3,ncol=1, data = c(25,45,13))
OneSampleHT2(datam,mu0,alpha=0.05)

#Testing Mu Vector (Two Sample Test, Sigma Unknown)

age12 = c(10, 15, 20, 25, 30, 12, 16, 21, 26, 32)
weight12 = c(35, 40, 45, 50, 55, 33, 42, 48, 52, 54)
hb12 = c(11, 12, 13, 14, 15, 10, 11, 13, 13, 14)
datam = matrix(nrow=10, ncol=3, data=c(age12, weight12,hb12), byrow = F)
G = c(rep(1,times=5), rep(2,times=5))
library(MVTests)

TwoSamplesHT2(datam, group = G, alpha = 0.05, Homogenity= TRUE)

#Assignments

#Q3
x1 = c(3.7, 5.7, 3.8, 3.2, 3.1, 4.6, 2.4, 7.2, 6.7, 5.4, 3.9, 4.5, 3.5, 4.5, 1.5, 8.5, 4.5, 6.5, 4.1, 5.5)
x2 = c(48.5, 65.1, 47.2, 53.2, 55.5, 33.6, 24.8, 33.1, 47.4, 54.1, 36.9, 58.8, 27.8, 40.2, 13.5, 56.4, 71.6, 52.8, 44.1, 40.9)
x3 = c(9.3, 8.0, 10.9, 12.0, 9.7, 7.9, 14.0, 7.6, 8.5, 11.3, 12.7, 12.3, 9.8, 8.4, 10.1, 7.1, 8.2, 10.9, 11.2, 9.4)
datam = matrix(nrow = 20,ncol = 3, data = c(x1,x2,x3),byrow=F)
mu0 = matrix(nrow = 3,ncol=1, data = c(4,50,10))
sigma = matrix(ncol = 3,nrow=3, data = c(3,10,-2,10,180,-5,-2,-5,4))
n= nrow(datam)
p= ncol((datam))
bar.x = colMeans(datam)
sigma.inv = solve(sigma)
z2 = n*t(bar.x-mu0)%*% sigma.inv %*% (bar.x-mu0)
z2
p.value = pchisq(q=z2,df=p,lower.tail = FALSE)
p.value

#Q6
library(MVTests)
x1 = c(3.7, 5.7, 3.8, 3.2, 3.1, 4.6, 2.4, 7.2, 6.7, 5.4, 3.9, 4.5, 3.5, 4.5, 1.5, 8.5, 4.5, 6.5, 4.1, 5.5)
x2 = c(48.5, 65.1, 47.2, 53.2, 55.5, 33.6, 24.8, 33.1, 47.4, 54.1, 36.9, 58.8, 27.8, 40.2, 13.5, 56.4, 71.6, 52.8, 44.1, 40.9)
x3 = c(9.3, 8.0, 10.9, 12.0, 9.7, 7.9, 14.0, 7.6, 8.5, 11.3, 12.7, 12.3, 9.8, 8.4, 10.1, 7.1, 8.2, 10.9, 11.2, 9.4)
datam = matrix(nrow = 20,ncol = 3, data = c(x1,x2,x3),byrow=F)
mu0 = matrix(nrow = 3,ncol=1, data = c(4,50,10))

OneSampleHT2(datam,mu0,alpha=0.05)


#Q11

x12 = c(3.7, 5.7, 3.8, 3.2, 3.1, 4.6, 2.4, 7.2, 6.7, 5.4, 3.9, 4.5, 3.5, 4.5, 1.5, 8.5, 4.5, 6.5, 4.1, 5.5,13.7, 15.7, 7.8, 6.2, 7.1, 9.6, 5.4, 9.2, 6.1, 9.4, 13.1, 5.5, 13.1, 14.1, 11.5, 12.3, 11.5, 12.2, 13.3, 14.8, 8.3, 9.4, 4.7, 8.1)
y12 = c(48.5, 65.1, 47.2, 53.2, 55.5, 33.6, 24.8, 33.1, 47.4, 54.1, 36.9, 58.8, 27.8, 40.2, 13.5, 56.4, 71.6, 52.8, 44.1, 40.9,52.5, 75.4, 57.2, 43.7, 65.3, 38.1, 33.4, 42.1, 45.4, 62.1, 43.9, 65.8, 37.8, 50.2, 24.5, 43.4, 77.6, 62.8, 54.1, 46.9, 56.5, 25.8, 37.9, 47.3)
z12 = c(9.3, 8.0, 10.9, 12.0, 9.7, 7.9, 14.0, 7.6, 8.5, 11.3, 12.7, 12.3, 9.8, 8.4, 10.1, 7.1, 8.2, 10.9, 11.2, 9.4,12.3, 11.0, 13.2, 11.4, 11.4, 16.7, 15.5, 17.6, 9.9, 12.6, 14.1, 14.3, 18.8, 18.4, 10.5, 9.1, 12.2, 11.9, 14.2, 12.4, 11.6, 12.7, 9.5, 7.8)
datam = matrix(nrow=44, ncol=3, data=c(x12, y12,z12), byrow = F)
G = c(rep(1,times=20), rep(2,times=24))
library(MVTests)

TwoSamplesHT2(datam, group = G, alpha = 0.05, Homogenity= TRUE)

X1 = c(3.7, 5.7, 3.8, 3.2, 3.1, 4.6, 2.4, 7.2, 6.7, 5.4)
X2 = c(48.5, 65.1, 47.2, 53.2, 55.5, 33.6, 24.8, 33.1, 47.4, 54.1)
X3 = c(9.3, 8.0, 10.9, 12.0, 9.7, 7.9, 14.0, 7.6, 8.5, 11.3)
Dfx123 = data.frame(X1,X2,X3)
scale(Dfx123, scale=FALSE)







