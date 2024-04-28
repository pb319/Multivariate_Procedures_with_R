
#Linear Regression
X1=c(34,12,15,33,31,24,40,31,21,37,29,15,17,38
     ,17,36,13,39,36,34)
X2=c(3,1,3,1,5,1,5,5,2,3,4,1,1,5,1,3,1,5,5,1)

X3=c(15,13,11,10,17,15,18,13,20,19,16,10,16,16
     ,19,20,11,18,15,19)

y=c(180,116,118,139,195,152,218,170,179,210,
    178,104,145,203,163,216,106,216,191,197)

# Checking Existence of Linear Association
# Matrix Scatter Plots
pairs(~y+X1+X2+X3)

# Model Fitting
m = lm(y~X1+X2+X3)

# Relevant Plots
library(ggplot2)
plot(m)

# If We're interested only on Coefficients
coefficients(lm(y~X1+X2+X3))

# Obtaining Fitted Value from Fittem Models
fitted.values(lm(y~X1+X2+X3))

#Residuals
residuals(lm(y~X1+X2+X3))

# Testing of Hypothesis for Regression Coefficients
summary(lm(y~X1+X2+X3))

# Confidence Interval
confint(lm(y~X1+X2+X3), level=0.95)

# ANOVA in Regression
anova(lm(y~X1+X2+X3))

# Logistic Regression (Dichotomous Var)
install.packages("HH")
library("HH")
data(spacshu)
spacshu
plot(spacshu)

# Fitting Generalized Linear Model
spacshu.glm = glm(damage~tempF,data = spacshu, family = binomial)
spacshu.glm
coef(summary(spacshu.glm))
# Hence model became --> logit(p hat) = 5.085 -01156F

#Assignment Week-9

#Q1
X1 = c(6.86, 5.57, 10.38, 9.91, 12.01, 10.14, 8.12, 10.34, 7.81, 10.45, 9.99, 12.78, 11.39, 8.42, 12.77, 10.16, 8.18, 4.85, 11.40, 9.40)

X2 = c(15.90, 14.51, 12.18, 19.35, 15.34, 16.79, 14.79, 17.35, 12.36, 13.58, 15.94, 18.13, 15.08, 17.22, 17.79, 14.43, 15.62, 16.60, 13.07, 12.47)

X3 = c(25.95, 26.02, 22.08, 25.28, 25.14, 25.77, 24.95, 23.27, 20.84, 24.87, 26.87, 23.14, 22.58, 24.15, 24.46, 23.59, 29.21, 22.63, 25.51, 21.30)

X4 = c(25.65, 26.29, 29.88, 33.69, 30.60, 28.58, 32.42, 32.47, 26.54, 26.94, 33.04, 31.13, 31.99, 31.52, 26.80, 33.74, 27.84, 25.36, 26.51, 29.30)

y = c(380, 376, 379, 449, 423, 408, 412, 421, 346, 380, 441, 421, 416, 414, 401, 418, 407, 353, 380, 375)


pairs(~y+X1+X2+X3+X4,main = "Matrix Scatterplot")
lm(y~X1+X2+X3+X4)
lm(y~X1+X2+X3)
summary(lm(y~X1+X2+X3+X4))
fitted.values(lm(y~X1+X2+X3+X4))
residuals(lm(y~X1+X2+X3+X4))
var(c(0.7166,2.9152,3.7467,5.0392,6.4646))
anova(lm(y~X1+X2+X3+X4))
confint(lm(y~X1+X2+X3+X4),level=0.90)


#Part-2
Y=c(1, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 1, 1, 0)

X1=c(0.8, 0.9, 0.8, 1, 0.9, 1, 0.95, 0.95, 1, 0.95, 0.85,0.7,0.8,0.2,1,1,0.65,1,0.5,1,1,0.9,1,0.95,1,1,1)

X2=c(0.83,0.36,0.88,0.87,0.75,0.65,0.97,0.87,0.45,0.36,0.39,0.76,0.46,0.39,0.9,0.84,0.42,0.75,0.44,0.63,0.33,0.93,0.58,0.32,0.6,0.69,0.73)

X3=c(0.66,0.32,0.7,0.87,0.68,0.65,0.92,0.83,0.45,0.34,0.33,0.53,0.37,0.08,0.9,0.84,0.27,0.75,0.22,0.63,0.33,0.84,0.58,0.3,0.6,0.69,0.73)

X4=c(1.9,1.4,0.8,0.7,1.3,0.6,1,1.9,0.8,0.5,0.7,1.2,0.4,0.8,1.1,1.9,0.5,1,0.6,1.1,0.4,0.6,1,1.6,1.7,0.9,0.7)

X5=c(1.1,0.74,0.18,1.05,0.52,0.52,1.23,1.35,0.32,0,0.28,0.15,0.38,0.11,1.04,2.06,0.11,1.32,0.11,1.07,0.18,1.59,0.53,0.89,0.96,0.4,0.4)

X6=c(1,0.99,0.98,0.99,0.98,0.98,0.99,1.02,1,1.04,0.99,0.98,1.01,0.99,0.99,1.02,1.01,1,0.99,0.99,1.01,1.02,1,0.99,0.99,0.99,0.99)


glm(Y~X1+X2+X3+X4+X5+X6,family = binomial)
data
coef(summary(spacshu.glm))
