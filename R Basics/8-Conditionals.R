#Conditional Statements
#Please check operators before beginning this section.

x=15
y=13
z=20
t=12

##If statement
  if  (x>y){
    print("x is greater than y")
  }
  #[1] "x is greater than y"

##Else if
if (x>y) {
  print("x is greater than y")
} else if (x<y) {
  print("x is smaller than y")
} else if (x==y) {
  print("x is equal to y")
}
#[1] "x is greater than y"

##Else statement
#else catches everything not specified in a conditional
#statement.
if (x<y) {
  print("x is smaller than y")
} else {
  print("We don't know anything other than x!<y")
}
#[1] "We don't know anything other than x!<y"

###Else can be used as a substitute for else if statements.

##Nested if statements
#If statements inside of other if statements are 
#called nested if statements. They are use for clean
#coding and proper logical operations.

if (x > 10) {
  print("x is above ten")
  if (x > 20) {
    print("and also above 20!")
  } else {
    print("but not above 20.")
  }
} else {
  print("below 10.")
} 
#[1] "x is above ten"
#[1] "but not above 20."

##And statement
#Prints TRUE if all conditions are met.

if(x>y & z>y){
  print("Both conditions are true")
}
#[1] "Both conditions are true"

##Or statement
#Prints true if one of the statements are true.

if (x>y | z<y){
  print("One of the conditions is true")
}
#[1] "One of the conditions is true"