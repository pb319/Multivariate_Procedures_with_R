# Hands on PCA Calculation
sigma = matrix(nrow=3, ncol=3, data= c(1, -2, 0, -2, 5, 0, 0, 0, 2))
eigen(sigma)

#Using Packages
X1 = c(11, -12, 6)
X2 = c(-12, 15, 4)
X3 = c(6, 4, 12)
datapc= data.frame(X1, X2, X3)
pcdataout = prcomp(datapc)
pcdataout

# Explained Variation
summary(pcdataout)

# Visualization
biplot(pcdataout)

#Scree Plot
library(factoextra)
fviz_eig(pcdataout)

# Demonstration with USArrest dataset
pcdataUSarrest = prcomp(USArrests)
summary(pcdataUSarrest)
biplot(pcdataUSarrest)
fviz_eig(pcdataUSarrest)

# Canonical Correlation Analysis in R: Intercountry Life-Cycle Savings Data

LifeCycleSavings
pop = LifeCycleSavings[, 2:3]
oec = LifeCycleSavings[, -(2:3)]
cancor(pop, oec)   

# Correlation Analysis
install.packages("CCA")
library(CCA)
cc(pop, oec)

library("factoextra")
data(decathlon2)
decathlonpc = decathlon2[1:23, 1:10]
pcout = prcomp(decathlonpc)
pcout
summary(pcout)
head(decathlonpc)

#Q2

x2=c(70.27,63.79,64.39, 81.77,81.27,75.74, 81.45,87.69,86.69, 86.45,65.50,85.16, 68.58,66.30,66.65, 67.10,88.78,86.70, 71.39,81.29, 71.44,65.93, 66.86,82.15, 61.01,71.44, 64.52,65.30, 69.89,68.68)
x3=c( 1.35, 7.04, 1.27, 3.35, 1.94, 5.97,-3.90, 0.83, 0.38, 4.82, 7.25, 4.32, 2.55,11.58, 1.81,-0.33,-1.79, 1.75, 6.43, 2.62, 6.12, 3.32,10.70, 5.64, 9.32, 6.30, 4.79,-0.64, 9.26, 7.25)
y1 = data.frame(x2,x3)

x1=c(21.65,25.50, 20.27,15.59, 23.25,19.65, 7.82,21.68,16.15, 22.84,25.53,13.81, 24.19,20.54,21.20, 18.92,12.88,15.60, 11.06,18.41,20.91, 24.94,25.92,15.45, 20.24,25.50,18.43, 23.60,22.43, 30.06)
x4=c(2622.89,1807.45,2408.27, 489.89,1030.47, 3283.34, 959.30, 597.31, 574.92, 763.91,2797.78, 580.89,1981.92, 2512.07,2760.66, 1173.08, 586.98, 530.05,2201.70, 388.23,1447.49, 1691.73,1557.82, 500.34,2752.41, 898.08,2533.87, 2044.42,1782.05,2640.01)
x5=c(9.12, 4.38,12.19, 6.29, 9.20, 6.62,11.84, 6.57, 9.87, 2.66, 8.94, 4.72, 7.09,13.23,10.33, 8.38, 3.02, 8.83, 6.38, 7.49,12.43, 2.30, 9.53,11.71, 7.11,12.76, 9.59,11.45, 4.23,25.63)
y2= data.frame(x1,x4,x5)

cancor(y1,y2)

