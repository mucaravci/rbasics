##Scatterplots

x=c(5,7,8,7,2,2,9,4,11,12,9,6)
y=c(99,86,87,88,111,103,87,94,78,77,85,86)

plot(x, y) 

plot(x, y, main="Refrigeration and Temperature", xlab="Hours in fridge", ylab="Temp", pch=16, col="blue")

##Comparing two plots:
x2=c(2,2,8,1,15,8,12,9,7,3,11,4,7,14,12)
y2=c(100,105,84,105,90,99,90,95,94,100,79,112,91,80,85)

plot(x, y, main="Refrigeration and Temperature", xlab="Hours in fridge", ylab="Temp", pch=16, col="blue")
points(x2,y2, col="red")

#We can make a rudimentary deduction that the increase in
#refrigeration times results in lower food temperatures.