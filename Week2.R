# Data Vectors
x=c(1,3,4,6)
length(x)
x + 14
y = c(1,3,2)
x-y
typeof(x)
x*2.5
z = x>3
typeof(z)
#--------------------------
#Built in Function

mean(x)
?mean
x1 = c(1,-3,7,9)
abs(x1)
sum(x1^2) #Sum of Squares

#----------------------------
#Creating Matrix
x = matrix(ncol = 2, nrow = 3, data= c(1,2,3,4,5,6) )
dim(x)
ncol(x)
y = matrix(nrow = 4,ncol = 2,data = 5)
z = diag(c(1,3,7), nrow = 3, ncol = 3)
x = matrix(data = 1:8,nrow = 2, ncol= 4)
xt = t(x)
xt
x * 4
# Arithmetic Operations on matrix
mat1 = matrix(data= 1:6,ncol = 2, nrow = 3)
mat2 = t(mat1)
mat1 %*% mat2
mat1 *7
mat2 = matrix(data= 1:8,nrow=4,ncol =2)
mat2 %*% t(mat2)

# Indexing and Slicing of Matrix
x = matrix(nrow = 5,ncol = 3, byrow = T,data = 1:15)

#Inverse of Matrix
solve()
y = matrix(data = c(84,100,100,120),byrow =T, ncol = 2 ,nrow = 2)
yi = solve(y)
yi %*% y
y %*% yi

#Eigen Values and Eigen Vectors
#Positive Definte Matrix: Square Matrix having all eigen values > 0 and Symmetric

y
eigen(y)

#Central Tendency:
x= c(1,2,5,8,7,7,9)
mean(x)
gm = prod(x)^(1/length(x))
hm = 1/mean(1/x) ## ********** Harmonic Mean

#Variablity

x = c(68,82,63,86,34,96,41,89,29,51,75,77,56,59,42)
((length(x)-1)/length(x))*var(x)
sqrt(var(x))
IQR(x)
IQR(x)/2
sum(abs(x-mean(x)))/length(x)
range(x)
d1 = c(360,370,380)
d2 = c(10,100,1000)
mean(d1)
mean(d2)
var(d1)
var(d2)

#Assignment 
x = matrix(1:9,3,3,byrow = T)
z = matrix(nrow= 2,ncol= 3,data = 5:10, byrow =T)
x
x[,2]
x[3,]
x= matrix(data = 1:9,3,3,byrow = F)
x[3,2]
x <- diag(3,2,2)
x= matrix(nrow=3, ncol =2, data= 6:11, byrow = T )
x = matrix(nrow=2,ncol=2,data = 1:4,byrow= T)
2%*%x
x = matrix(nrow = 3,ncol = 3,data = c(10,20,30,40,50,60,70,80,90),byrow =F)
x[2:3,2:3]
x[1:2,2:3]
x = matrix(data=c(12,18,10,23,34,56,12,64,22),nrow=3,ncol= 3,byrow =T)
solve(x)

x = c(10,20,30,1:100,NA)
mean(x)
mean(c(24,35,25,51,NA,18,41,16,43,32,NA,34),na.rm = T)

## Assignment
x = c(33,31,36,39,40)
y=c(20,25,31,36,40)
cor(x,y)
x=matrix(1:10,5,2,byrow = T)
y=matrix(1:10,5,2,byrow = F)
dim(x)
dim(y)
x
y
x%*%t(y)
