#NUMBERS

#There are three types of numbers in R:
  #numeric
  #integer
  #complex

#We can change the type of a variable with as. functions. 
#Most common as. functions are:
  #as.numeric()
  #as.integer()
  #as.complex()

#Example: 
num1=15
#by default its type is numeric
class(num1)
#[1] "numeric"
num2=as.integer(num1)
class(num2)
#[1] "integer"
