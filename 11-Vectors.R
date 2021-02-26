##Vectors

#Vectors in R are just simple lists of variables of same type.
#To combine a list into a vector we use c()

fruits=c("apples", "bananas", "oranges", "peaches", "kiwis")
fruits
#[1] "apples"  "bananas" "oranges" "peaches" "kiwis"

#Vectors can also have numbers
numbers=c(1, 2, 3, 4, 5)
numbers
#[1] 1 2 3 4 5

#We can use sequence operator : for number vectors
num2=1:12
num2
#[1]  1  2  3  4  5  6  7  8  9 10 11 12

#Vectors with decimals
num3= 1.5:6.5
num3
#[1] 1.5 2.5 3.5 4.5 5.5 6.5

num4=1.5:6.2
num4
#[1] 1.5 2.5 3.5 4.5 5.5
#This stops at 5.5 as 6.5 is not within the upper bounds.

#We can create a vector with logical values too.

logval=c(TRUE, TRUE, FALSE, TRUE)
logval
#[1]  TRUE  TRUE FALSE  TRUE

##Some Vector Related Commands
#Shows the number of elements in a vector
fruits=c("apples", "bananas", "oranges", "peaches", "kiwis")
length(fruits)
#[1] 5

#Sorting a vector
#Strings are sorted alphabetically
fruits=c("apples", "bananas", "oranges", "peaches", "kiwis")
sort(fruits)
#[1] "apples"  "bananas" "kiwis"   "oranges" "peaches"

numbers=c(1, 5, 3, 2, 4)
sort(numbers)
#[1] 1 2 3 4 5

#Accessing an element from a vector
fruits=c("apples", "bananas", "oranges", "peaches", "kiwis")
fruits[2]
#[1] "bananas"
#This retrieves the second item in a vector

#We can also retrieve multiple items from a vector.
fruits[c(2, 4)]
#[1] "bananas" "peaches"

#To retrieve all items except a selected one:
fruits[c(-1)]
#[1] "bananas" "oranges" "peaches" "kiwis"
fruits[c(-1, -4)]
#[1] "bananas" "oranges" "kiwis"

#Changing an item in a vector
#Lets change banana to a pear.
fruits[2]="pear"
fruits
#[1] "apples"  "pear"    "oranges" "peaches" "kiwis"

#Vector repetitinon
repvec=rep(c(1, 2, 3), each=3)
repvec
#[1] 1 1 1 2 2 2 3 3 3

#Repeating the vector as a whole
repvec2=rep(c(1, 2, 3), times=3)
repvec2
#[1] 1 2 3 1 2 3 1 2 3

#Individual repetition
repvec3=rep(c(1, 2, 3), times=c(3, 1, 5))
repvec3
#[1] 1 1 1 2 3 3 3 3 3

##Generating sequential vectors
num5=seq(from=0, to=20, by=2)
num5
#[1]  0  2  4  6  8 10 12 14 16 18 20
