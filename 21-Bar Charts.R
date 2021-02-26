#Bar charts

#We use barplot() function to create bar charts in r

x=c("Winter", "Spring", "Summer", "Autumn")
y=c(150, 200, 300, 180)
barplot(y, names.arg=x)

#We can use col= to change the color of the chart.
barplot(y, names.arg = x, col="limegreen")

#We can change the bar texture using density=
barplot(y, names.arg = x, col="limegreen", density=100)
#150 is fill, 0 is blank

#Bar width
#We can also change bar widths.
barplot(y, names.arg = x, width=c(1, 3, 3, 4), col="limegreen")

#Flipping the chart 90 degrees
barplot(y, names.arg = x, horiz=TRUE, col="limegreen")