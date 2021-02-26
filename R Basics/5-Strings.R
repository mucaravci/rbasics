#STRINGS

str="Hello!"
str
#[1] "Hello"

#We can use cat() function to output text as is.
cat(str)

#We can use nchar() function to count number of characters.
nchar(str)

#grepl() function can be used to look for a certain 
#character in a string.

str2="The quick brown fox jumps over a lazy dog."

grepl("The", str2)
#[1] TRUE
grepl("l", str2)
#[1] TRUE
grepl("34", str2)
#[1] FALSE

#We can use the paste() function to combine multiple
#strings.

str3="My name is Mehmet"
paste(str, str3)
#[1] "Hello! My name is Mehmet"

#Escape character (\)
#Some characters are cannot be used in 
#strings. 

str4="We are some self-taught "coders"."
#If you try to enter this, R will output the following error.
#Error: unexpected symbol in "str4="We are some self-taught "coders"

#We need to use \ in front of quotes.
str4="We are some self-taught \"coders.\""

#Other escape characters in R

#\\: Backslash
#\n: New line
#\r: Carriage Return
#\t: Tab
#\b: Backspace
