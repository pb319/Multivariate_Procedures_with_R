time.na = c(32, 35, 45, 83, 74, 55, NA, 38, 35,55, 66, 65, 42, 68, 72, 84, 67, 36, 42, 58)
time = c(32, 35, 45, 83, 74, 55, 68, 38, 35,55, 66, 65, 42, 68, 72, 84, 67, 36, 42, 58)

# Coefficient of Variation
sqrt(var(time,na.rm = T))/mean(time,na.rm = T)

# Dataframes
example(data.frame)

  # Input Sequence
  df = data.frame(Name = c('Ram','Sham','Jadu'), Math = c(72,67,89), Stat=c(59,80,85))

  #Dataframe Preview
  df 
  is.data.frame(df) #Checking datatype
  typeof(df)
  
  # Adding Another Column
  df = cbind(df,Hist =c(60,55,40))
  df
  
  # Adding Another Row
  df = rbind(df,c("Madu",45,65,95))
  df
  
  # Accessing Specific Column
  df$Name
  
# Boxplot
boxplot(time)

# Summary of Observation
summary(time)
time1 = c(320, 350, 45, 83, 74, 55, 68, 38, 35, 55, 66, 65, 42, 68, 72, 84, 67, 36, 42, 58)
summary(data.frame(time,time1))  # Summary from dataframe

#Grouped Boxplot
boxplot(data.frame(time,time1))

# Chats and Diagrams
salesper = c(1,1,2,1,2,3,2,2,3,3,3,1,2,3,2,2,3,
             1,1,3,3,1,2,1,3,3,3,2,2,2,2,1,2,2,1,1,1,3,2,2,
             1,2,3,2,2,1,2,3,3,2,1,2,2,3,1,1,2,1,2,3,2,3,2,
             2,3,1,2,3,3,3,2,1,1,1,2,1,1,2,1,2,3,3,1,2,3,3,
             2,1,2,3,2,1,3,2,2,2,2,3,2,2)

table(salesper)
help.search("barplot")

barplot(table(salesper)) # Absolute Frequency  
barplot(table(salesper)/length(salesper)) # Relative Frequency
barplot(table(salesper), main = "Customers attended by sales persons",
names.arg=c("SP 1", "SP 2", "SP 3"), xlab = "Sales Persons (SP)", ylab = "Number of customers"
,col =c("1","2","3"))

# component bar diagram
mat = matrix(nrow=4, ncol=3, 
             data =c(2,20, 30,26,53,40,42,15,25,30,75,100), byrow = T)
barplot(mat)  
barplot(mat, names.arg=c("Shop 1", " Shop 
2", " Shop 3"), xlab = " Shops", ylab = "Days", 
        col= c("red","green","orange","brown"))

# Multiple Bar Diagram

barplot(mat,beside = T)  
barplot(mat, names.arg=c("Shop 1", " Shop 
2", " Shop 3"), xlab = " Shops", ylab = "Days", 
        col= c("red","green","orange","brown"),beside = T)

# Pie Diagram
pie(table(salesper))
pie(table(salesper), labels = c("SP1", "SP2", "SP3"), main = "Salespersons attending customer",
    col=c("green", "red", "blue"))

# Histogram
height = c(166,125,130,142,147,159,159,147, 
           165,156,149,164,137,166,135,142,133,136,127,143,
           165,121,142,148,158,146,154,157,124,125,158,159,
           164,143,154,152,141,164,131,152,152,161,143,143,
           139,131,125,145,140,163) 

weight = c(56,22,35,47,37,49,52,57,55,66,59,44,47,56,45,52,
           43,32,37,43,55,28,48,42,58,46,57,57,24,29,58,59,68,
          46,54,57,48,64,37,58,59,64,47,53,49,36,35,45,44,66)

hist(height) # show absolute frequencies
hist(height, freq=F) # show relative frequencies

# Multiple Histogram
hist(height, col="blue", xlim=c(20, 180), main="Multiple Histograms", xlab="x")
hist(weight, col="green", add=TRUE)

# Scatterplot
water <- c(33710,31666,33495,32758,34067,36069, 
           37497,33044,35216, 35383,37066,38037,38495, 
           39895,41311,42849,43038,43873,43923, 45078, 
           46935,47951,46085,48003,45050,42924,46061)

temp <- c(23,25,25,26,27,28,30,26,29,32,33,34, 
          35,38,39,42,43,44, 45,45.5,45,46,44,44,41,37,40)

plot(water, temp)
plot(water, temp, "l")
plot(water, temp, "b")  
plot(water, temp, "o")
plot(water, temp, "h")
plot(water, temp, "s")
scatter.smooth(water,temp)
scatter.smooth(water, temp, lpars = list(col = "red", lwd = 3, lty = 3))

# Matrix Scatter Plot
pairs( cbind(water,temp))
pairs(cbind(water,temp), labels=c("Daily Water Demand", "Day Temperature") )

  
  
  
  
  
  
