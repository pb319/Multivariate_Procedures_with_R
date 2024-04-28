help.search("Z Test")
?t.test
# Hypothesis Testing (One Sample)
install.packages("compositions")
library(compositions)
temp=c(40.2, 32.8, 38.2, 43.5, 47.6, 36.6,
       38.4, 45.5, 44.4, 40.3, 34.6, 55.6, 50.9, 38.9,
       37.8, 46.8, 43.6, 39.5, 49.9, 34.2 )
Gauss.test(x=temp,mean =30,sd = 6, alternative = "two.sided")

#Confidence Interval
l = mean(temp)-(qnorm(0.975)*(6/sqrt(length(temp))))
u = mean(temp)+(qnorm(0.975)*(6/sqrt(length(temp))))

# t-Test for one-sample test
?t.test
t.test(temp,alternative = c("two.sided"),mu = 40,paired = FALSE,var.equal = FALSE,conf.level = 0.95)

#Two_sampled Test 

# Difference of Means when Standard Deviations are known 
library(compositions)
xa = c(25,32,30,34,24,14,32,24,30,31,35,25)
xb = c(44,34,22,10,47,31,40,30,32,35,18,21,35,29,22)
Gauss.test(x=xa,y=xb,mean = 0,sd=2,alternative = c("two.sided"))

# Difference of Means when Standard Deviations are Unknown
t.test(xa,xb,alternative = c("two.sided"), mu=0, paired = FALSE, var.equal =  TRUE, conf.level = 0.95)


# Assignment

d = c(15, 18.5, 14.6, 14.9, 17, 9, 17.5, 16.5, 15.5, 13.7)
s = sqrt(var(d)) 
l = mean(d) - (qt(0.975,df=9)*(s/sqrt(10)))
u = mean(d) + (qt(0.975,df=9)*(s/sqrt(10)))
l
u
t.test(x=d,y=NULL,alternative = c("two.sided"),mu=0,paired = FALSE,var.equal = FALSE,conf.level = 0.975)

#Q.3
d=c(530, 444, 562, 475, 556, 586, 554, 564, 432, 512, 540, 655, 462, 522, 572, 524, 518, 560, 538, 570, 485, 510, 490, 522, 612)
s = sqrt(var(d1))
s
tc = (mean(d1)-550)/(s/5)

mean(d1)-550
-18.2*5
t.test(x=d1,y=NULL,alternative = c("two.sided"),mu=550,paired = FALSE,var.equal = FALSE,conf.level = 0.95)
qt(0.08737,df=24)
mean(d1)-550

d= c(109, 120, 125, 111, 130, 128, 138, 123, 142, 144, 127, 129, 136, 141, 139)
tc = (mean(d)-550)/(sqrt(var(d))/sqrt(length(d)))
tc
t.test(x=d,y=NULL,alternative = c("two.sided"),mu=40,paired = FALSE,var.equal = FALSE,conf.level = 0.95)

#Q.6
x1=c(15.5, 16.0, 17.0, 16.0, 17.5, 16.0, 17.5, 15.5, 17.0, 16.5, 18.5, 17.0)
x2=c(16.5, 16.0, 18.5, 17.0, 16.5, 18.0, 17.5, 16.5, 17.5, 16.0 )
zc= (mean(x1)-mean(x2))/(sqrt((40/length(x1))+(60/length(x2))))
zc
Gauss.test(x=x1,y=x2,mean=0,alternative = c("two.sided"))
5/100
t.test(x=x1,y=x2,alternative = c("two.sided"),mu=0,var.equal = TRUE,conf.level = 0.95)
15616.293/2
2554.507/27

income=c(18,8,25,35,45,50,30,65,75,85,88,82,75,65,70,30,20,35,45,65,70,25,63,74,84,90,92,75,65,85)
incomegp = c('L','L','L','M','M','M','L','M','H','H','H','H','H','M','H','L','L','L','L','M','H','L','M','H','H','H','H','H','M','H')
aov(income ~ incomegp)
oneway.test(income~incomegp,var.equal = TRUE)



data = c(530, 444, 562, 475, 556, 586, 554, 564, 432, 512, 540, 655, 462, 522, 572, 524, 518, 560, 538, 570, 485, 510, 490, 522, 612)
Gauss.test(x=data,mean = 0,sd=5,alternative = c("two.sided"))
l = mean(data) - (qnorm(0.975)*(5/sqrt(length(data))))
t.test(x=data,alternative = c("two.sided"),mu=550,paired = FALSE,var.equal = FALSE,conf.level = 0.95)
?t.test
