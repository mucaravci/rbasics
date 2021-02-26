##Line Graphs

#Line graph is drawn by adding type="l" to plot function.
plot(1:10, type="l")

##We can change the line color:
plot(1:10, type="l", col="darkblue")

##Line width
#lwd
#Just like cex, it denotes the multiples of default thickness.
plot(1:10, type="l", col="darkblue", lwd=2)

##Line type:
#There are 6 types of lines in r's plot package.
#lty
plot(1:10, type="l", col="darkblue", lwd=2, lty=2)
plot(1:10, type="l", col="darkblue", lwd=2, lty=5)
#Line codes
#0 removes the line
#1 displays a solid line
#2 displays a dashed line
#3 displays a dotted line
#4 displays a "dot dashed" line
#5 displays a "long dashed" line
#6 displays a "two dashed" line

##Multiple lines:
x1=c(1,2,3,4,5,10)
x2=c(2,5,7,8,9,10)

plot(x1, main="x1 and x2", type = "l", col = "blue", lwd=2, lty=2)
lines(x2, type="l", col = "red", lwd=2, lty=3)