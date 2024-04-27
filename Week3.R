#Covariance:
cov(c(1,2,3.5,2),c(4,5,1,2))

# Correlation Coefficient:
cor(c(1,2,3.5,2),c(4,5,1,2))

# Scatter Plot
water <- c(33710,31666,33495,32758,34067,36069,
           37497,33044,35216, 35383,37066,38037,38495,
           39895,41311,42849,43038,43873,43923, 45078,
           46935,47951,46085,48003,45050,42924,46061)

temp <- c(23,25,25,26,27,28,30,26,29,32,33,34,
          35,38,39,42,43,44, 45,45.5,45,46,44,44,41,37,40)

# Covariance cov(x,y)
x = c(10,9,8,7,1,7,5)
y = c(7,7,5,1,6,9,10)
z = c(8,9,6,4,10,5,4)
cov(x,y)

# Correlation Coefficient cor(x,y)
cor(x,y)
plot(z,x)
scatter.smooth(x,y)
?scatter.smooth

plot(water,temp)
scatter.smooth(water,temp)
cor(water,temp)

#logical vector with 'TRUE' in the locations having NA
x = c(1,2,NA,14,7,NA)
is.na(x)

# Position of NA
which(is.na(x))

# Count of NA
sum(is.na(x))

# Negation of is.na()
which(complete.cases(x))

# Exact Non-NULL values
x[which(complete.cases(x))]

# Finding Complete List
na.omit(x)

# Measures with Missing Data
mean(x) # Gives NA
?mean
mean(x,na.rm=TRUE) # Expected
max(x,na.rm = T) - min(x,na.rm = T) # Range
IQR(temp,na.rm = T)

# Mean Absolute Deviation about Median
time.na = c(NA, NA, 45, 83, 74, 55, 68, 38,
            35, 55, 66, 65, 42, 68, 72, 84, 67, 36, 42, 58)
mean(abs((time.na - median(time.na, na.rm=TRUE))),
     na.rm= TRUE)

# Standard Deviation (na.rm() doen't work)
sqrt((length(na.omit(time.na)) - 1)/ 
       length(na.omit(time.na))*var(time.na, na.rm=T))

#Assignment Week-3
 # Q.1
bt = c(101.4,99.5,102.5,101.0,NA,103.2,NA,103.8,NA,104.2)
mean(bt,na.rm = TRUE)

 # Q.2
card  = c(18,17,12,NA,16,19,NA,15,11,12)
length(card)
median(card,na.rm=TRUE)

 # Q.3
emp = c(241,215,NA,218,217,226,NA,218,234,NA)
prod(emp,na.rm = T)

 # Q.7
temp = c(27.38, 9.55, 36.42, 9.50, 40.40, 44.46, 36.48, 29.83, 36.50, 1.63, 44.39, 20.33, 30.52, 24.44, 27.18, 37.58, 39.07, 40.42, 16.90, 32.40, 40.70, 25.70, 41.14, 34.19, 28.56, 35.34, 44.27, 25.74, 39.55, 28.20, 24.92, 31.05, 15.87, 28.73, 31.01, 26.52, 19.04, 20.81, 35.39, 29.86, 22.46, 31.69, 28.84, 0.30, 2.33, 25.36, 22.37, 21.09, 40.31, 41.18, 44.42, 21.08, 8.88, 24.34, 5.48, 6.50, 6.27, 16.18, 22.36, 1.98, 46.52, 18.51, 29.69, 46.20, 29.13, 38.22, 39.21, 19.00, 20.37, 38.64, 39.79, 31.18, 39.43, 37.45, 6.17, 22.52, 20.26, 21.41, 20.49, 35.57, 40.70, 20.58, 34.82, 16.93, 31.19, 8.50, 24.84, 23.43, 42.59, 32.38, 23.60, 15.81, 24.87, 16.41, 21.64, 16.95, 44.86, 24.05, 43.56, 23.13, 6.24, 15.45, 29.21, 31.04, 42.03, 46.64, 20.53, 3.07, 21.43, 22.75, 26.19, 31.17, 44.62, 25.41, 16.43, 36.27, 45.44, 22.48, 24.69, 16.98, 4.26, 47.92, 44.59, 7.92, 6.96, 27.40, 46.60, 36.99, 37.85, 31.61, 31.58, 19.85, 38.62, 31.90, 31.60, 17.82, 17.08, 33.18, 26.07, 16.45, 21.36, 4.92, 46.64, 22.62, 18.61, 32.57, 24.65, 18.01, 24.38, 35.13, 31.26, 26.57, 38.50, 23.36, 20.98, 28.03, 19.14, 21.40, 19.93, 18.86, 18.23, 32.07, 31.45, 39.85, 30.61, 1.08, 37.80, 35.22, 19.10, 28.69, 30.31, 6.84, 40.22, 37.28, 21.90, 30.76, 24.72, 23.22, 46.13, 35.48, 15.27, 35.43, 19.77, 26.10, 35.49, 38.39, 19.03, 2.32, 34.57, 33.50, 4.58, 42.73, 41.19, 27.98, 19.28, 16.82, 19.48, 5.49, 37.17, 25.10)
mean(temp)
(sum(abs(temp-mean(temp))))/length(temp)

 # Q.8
sqrt((var(temp)*(length(temp)-1))/length(temp))





















