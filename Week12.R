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
