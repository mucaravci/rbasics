##Lists in R
#Lists can contain multiple types of data

list1=list("apple", "banana", "orange", "pear")

##Like vectors, we can call a certain element of a list.

list1[2]
#[1] "banana"

##And we can change elements.

list1[4]=strawberry
list1[4]
#[1] "strawberry"

##We can see its length:
length(list1)
#[1] 4

##Searching within a list:

"apple" %in% list1
#[1] TRUE

"peach" %in% list1
#[1] FALSE

##Adding items to a list:,
#Lets say we want to add peach to our list:
append(list1, "peach")
list1
#We can add ", after=item number" at the end of the statement
#without quotations to append the element to a specific
#location. For example:
append(list1, "peach", after=2)#2 is banana

##Removing an item from a list:
#Lets say we want to remove strawberry(4) from the list:
list2=list1[-4]

##Ranged calls:
#To call a range of items from a list:
(list1)[2:4]

##List loops 

for (x in list1) {
  print(x)
}

##Combining two lists:
list1=list("apple", "banana", "orange", "pear")
list2=list("peach", "watermelon", "apricot")
list3=c(list1, list2)