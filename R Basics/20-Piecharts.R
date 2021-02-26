#Pie charts in R

#We use pie() function to draw pie charts.

x=c(10, 25, 50, 15)
pie(x)

#We can change the starting angle of the pie with
#init.angle= function and rotate/flip our charts.

pie(x, init.angle=180)

##Adding labels and headers to the chart
label1=c("Winter", "Spring", "Summer", "Autumn")
pie(x, label=label1, main="Sales by Season")

##We can also define colors as a list and add it.
color1=c("blue", "yellow", "pink", "green")
pie(x, label=label1, main="Sales by Season", col=color1)

##We can use a legend to make our chart more presentable
label1=c("Winter", "Spring", "Summer", "Autumn")
color1=c("blue", "yellow", "pink", "green")

pie(x, label=label1, main="Sales by Season", col=color1)
legend("bottomright", label1, fill=color1)

#Possible legend positions are:
#   bottomright, bottom, bottomleft, left, topleft
#   top, topright, right, center