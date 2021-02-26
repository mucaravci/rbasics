##R Datasets Basics

#Lets use R's mtcars database for some basics.
mtcars

#We can use ?dataset to get info about it.
?mtcars

#Lets copy mtcars to another dataset for easier and cleaner work
cars1=mtcars

#And see its dimensions and headers
dim(cars1)
#[1] 32 11

names(cars1)
# [1] "mpg"  "cyl"  "disp" "hp"   "drat" "wt"   "qsec" "vs"   "am"   "gear"
#[11] "carb"

#We can use rownames to see the names of elements in the set.
rownames(cars1)
#This will provide a list of 32 cars in our dataset.

##Printing values of a variable.
#Lets print out mileage figures.
cars1$mpg
#[1] 21.0 21.0 22.8 21.4 18.7 18.1 14.3 24.4 22.8 19.2 17.8 16.4 17.3 15.2
#[15] 10.4 10.4 14.7 32.4 30.4 33.9 21.5 15.5 15.2 13.3 19.2 27.3 26.0 30.4
#[29] 15.8 19.7 15.0 21.4

##We can also sort the results:
sort(cars1$mpg)
#[1] 10.4 10.4 13.3 14.3 14.7 15.0 15.2 15.2 15.5 15.8 16.4 17.3 17.8 18.1
#[15] 18.7 19.2 19.2 19.7 21.0 21.0 21.4 21.4 21.5 22.8 22.8 24.4 26.0 27.3
#[29] 30.4 30.4 32.4 33.9

##To get the summary of the data
summary(cars1)

##Minimum and maximum values
#We can use min() or max() functions to find the lowest/highest value
#in our dataset.,

min(cars1$mpg)
#[1] 10.4

max(cars1$mpg)
#[1] 33.9

##We can find out which individual the value belongs to with which.min()
##or which.max() functions.

which.min(cars1$mpg)
#[1] 15

which.max(cars1$mpg)
#[1] 20

##To display the name of the individual, we can combine these with
##rownames()[] function

rownames(cars1)[which.min(cars1$mpg)]
#[1] "Cadillac Fleetwood"

rownames(cars1)[which.max(cars1$mpg)]
#[1] "Toyota Corolla"

##Mean, Median and Mode of a Set

#Mean
#Lets find the mean mpg in our set.
mean(cars1$mpg)
#[1] 20.09062

#Median
median(cars1$mpg)
#[1] 19.2

#Mode
names(sort(-table(cars1$mpg)))[1]
#[1] "10.4"

##Percentiles
#We can use quantile function to see our percentiles.
#c() denotes our percentage. (1.00=100%)
quantile(cars1$mpg, c(0.60))
#60% 
# 21 
#This indicates that 60% of our sample has less than 21mpg.

#By running quantile function with no specification, we can get
#our quartiles.
quantile(cars1$mpg)
#    0%    25%    50%    75%   100% 
#10.400 15.425 19.200 22.800 33.900 
