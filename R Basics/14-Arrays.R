##Arrays in R
#Unlike matrices, arrays can have more than 2 dimensions.

##One dimensional array
array1=c(1:30)

#2-dimensional array
#We can add more dimensions to an array by specifying
#dimensions by adding ", dim=c8(x, y, z)" without 
#quotations at the end of our statement.

#IMPORTANT
#The first two numbers in dim (x and y in our example)
#specify the number of rows and columns. z is the number
#of dimensions.

array2d=array(array1, dim=c(4, 3, 2))
#So this creates a two-dimensional 4x3 array.

##Like matrices, we can access certain items in an array:

array2d[2, 3, 2]
#[1] 22
#Similar to creation, the numbers represent row, column and
#matrix level, respectively.

##To access an entire row or a column, we can use:
array2d[c(2),,2] #Second row of second matrix
#[1] 14 18 22
array2d[,c(1),1] #First column of first matrix
#[1] 1 2 3 4

##Searching for an item in an array:

2 %in% array2d
#[1] TRUE
140 %in% array2d
#[1] FALSE

##Dimensions of an array:
dim(array2d)
#[1] 4 3 2

##Length of an array:
length(array2d)
#[1] 24

##Looping through an array:

for(x in array2d){
  print(paste(x, "Mississippi"))
}