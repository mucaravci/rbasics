#Functions in R

func1=function() {#example function with code
  print("Function successfully activated")
}


func1()
#[1] "Function successfully activated"

##Arguments with Functions

func2=function(brand) {
  paste(brand, "Apple")
}

func2("Honeycrisp")
#[1] "Honeycrisp Apple"
func2("Golden")
#[1] "Golden Apple"
func2("Granny Smith")
#[1] "Granny Smith Apple"

###Number of arguments in input and output MUST be equal
###or else the function will not work.

func3=function(brand, apple) {
  paste(brand, apple)
}
#To successfully use this function, we have to enter
#both apple type and "apple".

#Default parameter values

func4=function(brand="Honeycrisp") {
  paste("My favorite type of apple is", brand)
}
#if we just execute func4, we will get our default value.
func4()
#[1] "My favorite type of apple is Honeycrisp"

#We can still use custom values in our function.
func4("Granny Smith")
#[1] "My favorite type of apple is Granny Smith"

#Return function
#We can use this function to make our function return a value.

func5=function(x) {
  return(5^x)
}

func5(2)
#[1] 25
func5(4)
#[1] 625

#Nesting

nestfunc=function(x, y) {
  b=x+y
  return(b)
}

nestfunc(nestfunc(2,5), nestfunc(2,6))
#[1] 15
#R treats this as (2+5)+(2+6). 2 and 5 are the x values
#of outer function and 2 and 6 are the y's of it.

#Double function

nestfunc2=function(x) {
  nestfunc3=function(y) {
    z=x+y
    return(z)
  }
  return(nestfunc3)
}

#We cant call the nestfunc2 as y has not been defined
#so we equate nestfunc2 to 3 before executing it.
result=nestfunc2(3)
#Then call the function with 5.
result(5)
#[1] 8

##Recursion
#Recursion just repeats the function

rec=function(x) {
  if (x>=15) {
    answer=x+rec(x-1)
    print(answer)
  } else {
        result=0
        return(result)
      }
}
rec(30)

##Global variables
#Non-functional variables are global variables.

met="bruh"

func6=function() {
  paste(met, "moment")
}
func6()
#[1] "bruh moment"