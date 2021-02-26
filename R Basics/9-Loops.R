#Loops

#R has two major loop commands. These are:
  #while 
  #for

##While loops

a=1
while (a<=15) {
  if (a<15) {
    print("Not 15 yet")
  } else {
    print("Now it's 15")
  }
  a=a+1
}

##For loops
#for is used for sequence iteration

for (b in 1:5){
  print(b)
}

#Printing a list, matrix, vector etc.

ltr=list("a", "b", "c", "d", "e")
for (x in ltr){
  print(x)
}

#OR

numbers=c(1, 2, 3, 4, 5)
for (x in numbers) {
  print(x)
}

##Break statement
#Lets have our list ltr break at c
ltr=list("a", "b", "c", "d", "e")
for (x in ltr) {
  if (x=="c") {
    break
  }
  print(x)
}

##Next statement
#We can skip an item with this statement
#Let's have our list skip at c

ltr=list("a", "b", "c", "d", "e")
for (x in ltr) {
  if (x=="c") {
    next
  }
  print(x)
}

#Nested loops 

#Let's combine a couple of loops in nests.

for (x in ltr) {
  for (y in numbers) {
    print(paste(x,y))
  }
}
