#Operators in R
#There are five types of operators in R. These are:
  #Arithmetic operators
  #Assignment operators
  #Comparison operators
  #Logical operators
  #Misc. operators

x=120
y=12

##Arithmetic operators

#Addition(+)
  x+y
  #[1] 132
  
#Subtraction
  x-y
  #[1] 108
  
#Multiplications
  x*y
  #[1] 1440
  
#Division
  x/y
  #[1] 10

#Exponent
  x^y
  #[1] 8.9161e+24
  
#Modulus(Remainder from division)
  x%%y
  #[1] 0
  
#Integer Division
  x%/%y
  #[1] 10
  
##Assignment Operators
var=3
var<-3
var->3
#Equal sign can be used to set variables however, using
#arrows for variables is strongly recommended to prevent
#confusion in complicated equations/operations.

##Comparison Operators

#Equal to
  x==y
  #[1] FALSE

#Not equal to
  x!=y
  #[1] TRUE
  
#Greater than
  x>y
  #[1] TRUE
  
#Less than
  x<y
  #[1] FALSE

#Greater than or equal to 
  x>=y
  #[1] TRUE
  
#Less than or equal to
  x<=y
  #[1] FALSE
  
##Logical Operators
  
#Element-wise And operator. 
#Returns TRUE if both elements are true
  x>y & x<=y
  #[1] FALSE
  
#Logical And operator.
#Returns TRUE if both statements are true.
  x>y && x>=y
  #[1] TRUE

#Element-wise Or operator.
#Returns TRUE if one of the operators is True.,
  x>y | x<=y
  #[1] TRUE

#Logical Or operator.
#Returns TRUE if one of the statements is true.
  x>y || x<=y
  #[1] TRUE

#Logical Not operator.
#Returns FALSE if the statement is true.

##Miscellaneous Operators
#Sequence creation
  nums=1:10
  nums
  #[1]  1  2  3  4  5  6  7  8  9 10

#Vector elements
  x%in%y
  #Checks if an element(x) is in a vector(y).

#Matrix multiplication
  mat=matrix1%*%matrix2
  