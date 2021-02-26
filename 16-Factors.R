##Factors

#Factors are used to categorize data.
#For example:

#Gender: Male/Female
#Music: Rock, Pop, Classic
#Education: High School, College, Masters

#Genre factor example:
genre=factor(c("jazz", "classical", "rock", "pop", "country", "jazz", "rock", "jazz"))
genre
#[1] jazz      classical rock      pop       country   jazz      rock     
#[8] jazz     
#Levels: classical country jazz pop rock

#Levels show us all of the categories. We can use levels() function to only
#see the categories.
levels(genre)
#[1] "classical" "country"   "jazz"      "pop"       "rock"

##We can use levels function when creating a factor to predefine our 
#categories.

genre2=factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"), levels = c("Classic", "Jazz", "Pop", "Rock", "Other"))

levels(genre2)
#[1] "Classic" "Jazz"    "Pop"     "Rock"    "Other" 

##Length of a factor:
length(genre2)
#[1] 8

#Accessing an item in a factor:
genre2=factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"), levels = c("Classic", "Jazz", "Pop", "Rock", "Other"))
genre2[3]
#[1] Classic
#Levels: Classic Jazz Pop Rock Other

#Changing a value:
genre2[3]="Pop"
genre2[3]
#[1] Pop
#Levels: Classic Jazz Pop Rock Other

#IMPORTANT: You cannot change an element to an undefined level.
#For example:
genre2[3]="Nu-Metal"
#Warning message:
#  In `[<-.factor`(`*tmp*`, 3, value = "Nu-Metal") :
#  invalid factor level, NA generated

#The new value must be specified in Levels.

