##Plots in R

##plot() function can be used to draw diagrams.
plot(2,4)

##We can draw multiple points in a plot:
plot(c(2, 4), c(5, 9))

##Plotting multiple points
plot(c(1, 2, 3, 4, 5), c(3, 7, 8, 9, 12)) 

##We can also split values to make it more manageable.
x=c(1, 2, 3, 4, 5)
y=c(3, 7, 8, 9, 12)

plot(x, y)

##Plotting sequential points:
plot(1:20)

##Plotting a line:
plot(1:20, type="l")#The letter l for line

##We can also add labels and titles to our graphs:
plot(1:20, type="l", main="Numbers from 1 to 20", xlab="x axis", ylab="y axis")

##We can also add color to our graphs
plot(1:10, col="red")
plot(1:20, type="l", main="Numbers from 1 to 20", xlab="x axis", ylab="y axis", col="red")

##To change the sizes of points or lines:
plot(1:10, col="black", cex=2)
plot(1:20, main="Numbers from 1 to 20", xlab="x axis", ylab="y axis", col="red", cex=2)
#Cex denotes the size multiple. 2 is twice the normal, 0.5 is half the normal and so on.

##Point symbol.
#R's default point style is a hollow circle. We can
#change the value from 0 to 25 change point type with
#pch=.
plot(1:10, pch=2, cex=2)
plot(1:10, pch=20, cex=2)
plot(1:10, pch=14, cex=2)
#To see which code corresponds to which point visit:
  #https://www.w3schools.com/r/r_plot_pch2.png
