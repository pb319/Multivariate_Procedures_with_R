install.packages("scatterplot3d")
library(scatterplot3d)
H =c(100,120,150,176,180)
W = c(28,35,55,74,85)
A = c(5,8,15,18,25)
data3d = data.frame(H,W,A)
data3d[1:3,]
scatterplot3d(data3d[1:3,])
help("scatterplot3d")
stars(data3d,labels = c("1","2","3","4","5"))
max(data3d,axis=1)
help(stars)
help(max)
for(i in x)
  print(i/max(data3d))

# Normal Distribution

# P(X>22)
1- pnorm(q=22,mean=20,sd=sqrt(4))
pnorm(q=22,mean = 20, sd = sqrt(4), lower.tail = F)

# Assignment 5
x=c(33,31,36,39,40)
y=c(20,25,31,36,40)
z=c(5,8,10,13,17)

library(scatterplot3d)
scatterplot3d(data.frame(x,y,z))
data.frame(x,y,z)
stars(c(x,y,z))

install.packages("aplpack")
library(aplpack)
faces(cbind(x,y,z))

x = 50/850
pbinom(q=1,size=2,prob=x)
