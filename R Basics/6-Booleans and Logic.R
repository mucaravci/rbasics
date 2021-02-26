#Booleans/Logical Values in R

10<9
#[1] FALSE
11>9
#[1] TRUE
10==9
#[1] FALSE

#We can also compare two variables.
a=19
b=22

a<b
#[1] TRUE

#Logical operations can be used in if..else statements.
if (b<a) {
  print("b is greater than a")
} else {
  ("a is greater than b")
}
#[1] "a is greater than b"