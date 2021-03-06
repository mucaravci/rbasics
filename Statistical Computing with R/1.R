##Statistical Computing with R

#This set of tutorials is intended to expand on the topics covered in R.

#These tutorials will focus on using R with contributed packages and
#for intermediate statistical analyses.

###PACKAGES

#Packages are software bundles that provide an array of functionalities.
#R has three main types of packages. These are base, contributions and 
#packages on sites such as Github. 

#Although base R packages are useful on their own, we can get the most
#out of R with contributed packages, and for very special cases, with 
#personal packages on sites such as Github.

#To find out more about packages we can visit CRAN, the official repository
#of R, or we can go to websites such as r-pkg.org to learn about
#the most popular packages.

#Sources such as Github repositories are a great way to find specialized
#and/or updated packages that fit your needs. A great page to follow for
#packages on Github is github.com/trending/r 

#There are countless number of packages for R but some packages are 
#universally used. Packages such as ggplot2, dplyr, tidyr, stringr, 
#lubridate, httrggvis, ggplot2, shiny, rio and markdown are R's 
#additional packages.

##To install a package in R we use the following command:
#install.packages("packagename")
#Lets use one of R's most useful packages, pacman, for our example:
install.packages("pacman")

#Pacman is R's package manager. In time, the scale of our work on R may
#grow so much that loading and installing basic packages might become 
#difficult to manage. So pacman is a great tool in managing basic packages
#in one command. 

#Lets have pacman load ggplot2 and dplyr upon its startup.
pacman::p_load(pacman, ggplot2, dplyr)

#Now we just need to load the pacman package rather that loading
#ggplot2 and dplyr one by one. This will save us a lot of time and
#in the future.
#Note: pacman will install if one of the packages you specified
#is not installed.