# Linear Discriminate Analysis (LDA )

# Create a Dataframe
quant = c(5, 2, 6, 9, 8, 7, 9, 10, 10)
verbal = c(2, 1, 3, 7, 9, 8, 8, 10, 9)
train = c(1, 1, 1, 2, 2, 2, 3, 3, 3)
iq.train = data.frame(quant, verbal, train)
iq.train

# Rename Categories
train.f = factor(train,levels = 1:3)
levels(train.f) = c("none", "some","much") 
train.f

#Conducting Discriminant Analysis
library(MASS)
lda.fit = lda(train.f~ verbal + quant, data = iq.train)
lda.fit

# Predicting Group Membership
predict(lda.fit)

## Goodness(Report Card)
result = predict(lda.fit)$class
result = cbind(result)
prior = cbind(train.f)
out = data.frame(prior,result)
out # Comparative View

# Confusion Matrix
confusion = table(train.f,result)
confusion

# Relevant proportions
prop.table(confusion)


# Assignment 10
school = c( 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3)
physics = c(29.2, 77.3, 75.5, 30.2, 51.2, 48.2, 49.3, 53.2, 28.8, 30.2, 49.4, 50.1, 48.5, 49.5, 50.8, 52.5, 26.6, 29.8, 29.3, 32.9, 74.7, 70.1, 72.8, 74.3, 77.3, 75.3, 28.2, 29.8, 74.7, 74.6)
chemistry = c(60.2, 47.8, 55.2, 63.7, 59.2, 46.5, 37.1, 36.7, 63.6, 23.2, 32.6, 25.6, 42.5, 24.5, 60.4, 50.7, 45.2, 48.5, 50.3, 45.3, 55.4, 31.4, 55.6, 44.6, 58.3, 53.3, 50.8, 54.4, 74.1, 61.9)
mathematics = c(16.4, 19.2, 17.4, 22.1, 91.3, 92.1, 90.6, 88.5, 87.5, 89.6, 70.8, 37.9, 74.5, 69.5, 72.4, 27.5, 29.4, 71.1, 71.7, 76.3, 18.6, 24.4, 19.1, 18.7, 19.6, 20.3, 90.5, 87.6, 91.8, 21.7)
d_var = data.frame(physics, chemistry, mathematics)
d_var

# Rename Categories
d.f = factor(school,levels = 1:3)
levels(d.f) = c("first", "second","third") 
d.f

#Conducting Discriminant Analysis
library(MASS)
lda.fit = lda(d.f~ physics + chemistry + mathematics,
              data = d_var)
lda.fit
plot(lda.fit)
lda.fit$scaling

# Predicting Group Membership
predict(lda.fit)

## Goodness(Report Card)
result = predict(lda.fit)$class
result = cbind(result)
prior = cbind(d.f)
out = data.frame(prior,result)
out
# Confusion Matrix
confusion = table(d.f,result)
prop.table(confusion)
3/length(school)


# Q2

school = c( 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3)
physics = scale(physics)
chemistry = scale(chemistry)
mathematics = scale(mathematics)
d_var = data.frame(physics, chemistry, mathematics)
d_var

# Rename Categories
d.f = factor(school,levels = 1:3)
levels(d.f) = c("first", "second","third") 
d.f

#Conducting Discriminant Analysis
library(MASS)
lda.fit = lda(d.f~ physics + chemistry + mathematics,
              data = d_var)
lda.fit
plot(lda.fit)
lda.fit$scaling

# Predicting Group Membership
predict(lda.fit)

## Goodness(Report Card)
result = predict(lda.fit)$class
result = cbind(result)
prior = cbind(d.f)
out = data.frame(prior,result)
out
# Confusion Matrix
confusion = table(d.f,result)
prop.table(confusion)
