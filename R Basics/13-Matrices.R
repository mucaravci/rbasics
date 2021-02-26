###Matrices in R
#Matrix is a two dimensional dataset.
#matrix() function is used when creating matrices.
#We must specify the number of rows and columns with 
#nrow and ncol.

##Matrix creation
mat1=matrix(c(1, 2, 3, 4, 5, 6), nrow=3, ncol=2)
mat1
#     [,1] [,2]
#[1,]    1    4
#[2,]    2    5
#[3,]    3    6

##Matrices can also include strings:
mat2=matrix(c("apple", "banana", "orange", "peach"), nrow=2, ncol=2)
mat2
#       [,1]     [,2]    
#[1,] "apple"  "orange"
#[2,] "banana" "peach" 

##Accessing matrix items
#To access a matrix item we specify its row and column
#respectively.

mat2[2,1]
#[1] "banana"
mat2[1,2]
#[1] "orange"

##By not specifying the other part, we can access a whole
#row or a column.
mat2[1,]
#[1] "apple"  "orange"
mat2[,2]
#[1] "orange" "peach"

##Using c() we can also access multiple rows or columns:
mat3=matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)

mat3[c(1,2),]
#       [,1]     [,2]     [,3]   
#[1,] "apple"  "orange" "pear" 
#[2,] "banana" "grape"  "melon"

mat3[,c(1,2)]
#       [,1]     [,2]       
#[1,] "apple"  "orange"   
#[2,] "banana" "grape"    
#[3,] "cherry" "pineapple"

##Adding rows and columns to a matrix
#We can use cbind and rbind to add rows and columns to a
#matrix.
mat4=cbind(mat3, c("strawberry", "blueberry", "raspberry"))
mat5=rbind(mat4, c("kiwi", "cranberry", "checkerberry"))
mat5
#       [,1]     [,2]        [,3]           [,4]        
#[1,] "apple"  "orange"    "pear"         "strawberry"
#[2,] "banana" "grape"     "melon"        "blueberry" 
#[3,] "cherry" "pineapple" "fig"          "raspberry" 
#[4,] "kiwi"   "cranberry" "checkerberry" "kiwi" 

##Removing rows and columns
#We can use matrix[c(), c()] function to remove rows and
#columns.

mat6=mat5[c(-2), c(-1)]
mat6
#       [,1]        [,2]           [,3]        
#[1,] "orange"    "pear"         "strawberry"
#[2,] "pineapple" "fig"          "raspberry" 
#[3,] "cranberry" "checkerberry" "kiwi"      

##Searching for an item in a matrix
#just like lists and vectors, we use the following:

"orange" %in% mat6
#[1] TRUE
"apple" %in% mat6
#[1] FALSE

##Dimensions of a matrix

dim(mat5)
#[1] 4 4
dim(mat6)
#[1] 3 3

##Number of cells in a matrix
length(mat6) #3x3 matrix
#[1] 9

##Matrix loops:
#For example, lets list all elements in Matrix 5:
for (rows in 1:nrow(mat5)) {
  for (columns in 1:ncol(mat5)) {
    print(mat5[rows, columns])
  }
}

##Combining two matrices
#Two matrices must be combined by rows and columns
#separately.

mat1=matrix(c("a", "b" , "c", "d"), nrow=2, ncol=2)
mat2=matrix(c("e", "f" , "g", "h"), nrow=2, ncol=2)

matcom=rbind(mat1, mat2)
matcom=cbind(mat1, mat2)