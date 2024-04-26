
# get help for function matrix(full/partial)
?matrix    

# When you're not aware of the specific function rather looking for a function to execute a specific task
help.search("principal component analysis")
help.search("Polynomial Regression")

# To find the parent package of a specific function to invoke that library 
find("matrix")
find("hclust")

#Finding objects by partial name
apropos("lm")

# Demonstrate few use cases
example("matrix")
example("hclust")
install.packages("factoextra")

library(factoextra)
?get_pca
## Access Library Documentations(** Too Useful)
library(help=stats)
library(help=ggplot2)
library(help=factoextra)
library(help=cluster)

install.packages("ggplo2")
library(ggplot2)


# Not Menu driven

library(MASS)
attach(bacteria)
fix(bacteria) # This will open R Data Editor

# Removing Variable
rm(help)



# Assignment Week-1

x= c(1,2,2,1,1,1,2,3,5,5)
hist(x)

# Q.8
c(1,2,3,4)*c(1,2,2,4)^c(2,1,3,2)**c(1,2,3,3)-c(2,3,402653185,262145)

# Q.9
c(2,3,4,5)^c(2,3)+c(12,23,14,25)^c(3,2)-c(5,6,7,8)*c(2,3)

#Q.10
c(2,3,4,5)^c(2,3,4)-c(12,23,14,15)^c(2,3,4,5)+c(2340,3440,48760,459870)+c(2,3,4,5)^c(2,3,4,5)

#Q.11
abs(c(5,6,7,8)*c(-1,-2,-3,-4)-c(5,6,7,8)*c(-2,3) -c(1,2,4,4)^-c(1,2,-1,-2))

#Q.12
c(1,2,4,4)^-c(1,2,-1,-2)*c(1,2,4,4)^-c(1,2,-1,-2)

#Q.13
c(15,16,17,18)%/%8* c(52,64,71,86)%/%c(4,3)+c(53,66,87,78)%%7

#Q.14
max(c(62,83,44,75)^-c(9,-3))/min(c(52,62,71,85)^c(2,3))-prod(c(1,2,1,2)^c(1,2))+max(c(12,13,14,15)^c(2,3))

#Q.15
prod(c(1,2,1,2)^c(1,2))+sum(c(1,2,1,2)^c(2,3))-prod(c(1,2,1,2)^c(1,2,3,7))-ceiling(c(5,6,7,8)^c(2,3))

#Q.16
ceiling(c(5,6,7,8)^c(2,3))+floor(c(5,6,7,8)^c(2,3))+floor(c(2,3,4,5)^-c(1,-2)) - round(c(5,6,7,8)^c(2,3))

#Q.17
round(c(21,23,44,15)^c(-11,-12)+ sqrt(c(35,16,37,88)^c(12,3))*sqrt(c(21,13,14,45)^-c(1-2)))
round(c(21,23,44,15)^c(-11,-12) + sqrt(c(35,16,37,88)^c(12,3))*sqrt(c(21,13,14,45)^-c(1,-2)))

#Q.18
round(sum(c(12,13,871,789))- prod(c(21,22,13,14,51)))

#Q.19
X1 = c(123,258,318,624)
X2 = sqrt(X1^3)+X1/X1^2-X1**(1/2)

#Q.20
c(11,12,34,24)^-c(2,2,-1,-2)*c(1,2,3,4)-c(12,14,11,16) %/% c(4,3)+min(c(120,14,14,15)^c(1,3))+max(c(56,12,71,15)^c(2,3))




































































