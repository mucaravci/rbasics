##Data Frames in R

#Data frames are table-formatted data sets in R.
#The first column of frames can be characters, the others
#can be numeric or logical but, each column must have
#the same type of data.

frame1=data.frame (
  Training=c("Passing", "Kicking", "Dribbling"),
  Score=c(100, 150, 110),
  Seconds=c(60, 30, 45)
)
frame1
#    Training Score Seconds
#1   Passing   100      60
#2   Kicking   150      30
#3 Dribbling   110      45

#Summarizing a frame
summary(frame1)
# Training             Score        Seconds    
#Length:3           Min.   :100   Min.   :30.0  
#Class :character   1st Qu.:105   1st Qu.:37.5  
#Mode  :character   Median :110   Median :45.0  
#                   Mean   :120   Mean   :45.0  
#                   3rd Qu.:130   3rd Qu.:52.5  
#                   Max.   :150   Max.   :60.0 

##Accessing items in tables.
#We can use [], [[]], and $ to accesss items in a dataframe.

frame1[1]
#   Training
#1   Passing
#2   Kicking
#3 Dribbling

frame1[["Training"]]
#[1] "Passing"   "Kicking"   "Dribbling"
frame1$Training
#[1] "Passing"   "Kicking"   "Dribbling"

##Add rows and columns

frame2=rbind(frame1, c("Strength", 120, 40))
frame2
#   Training Score Seconds
#1   Passing   100      60
#2   Kicking   150      30
#3 Dribbling   110      45
#4  Strength   120      40

frame2=cbind(frame1, "Steps"=c(1000, 2000, 3000))
frame2
#   Training Score Seconds Steps
#1   Passing   100      60  1000
#2   Kicking   150      30  2000
#3 Dribbling   110      45  3000

##Removing rows and columns
#We can use -c(#) or c(-#)

frame3=frame2[-c(1), c(-1)]
frame3
# Score Seconds Steps
#2   150      30  2000
#3   110      45  3000

##Dimensions of a frame
dim(frame2) #A 3 by 4 frame
#[1] 3 4
#We can also use ncol() and nrow() functions to see
#the number of columns and rows.

##Frame length
length(frame2)
#Unlike previous topics, length only displays the number
#of rows in data frames.

##Combining data frames
#Use rbind to combine frames vertically
frame4=data.frame (
  Training = c("Passing", "Kicking", "Dribbling"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)

frame5=data.frame (
  Training = c("Jumping", "Corner", "Freekick"),
  Pulse = c(140, 150, 160),
  Duration = c(30, 30, 20)
)

frame6=rbind(frame4, frame5)
#   Training Pulse Duration
#1   Passing   100       60
#2   Kicking   150       30
#3 Dribbling   120       45
#4   Jumping   140       30
#5    Corner   150       30
#6  Freekick   160       20

#Use cbind to combine columns:
frame7=data.frame (
  Training = c("Passing", "Kicking", "Dribbling"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)

frame8=data.frame (
  Intensity = c(10, 5, 6),
  Days = c(30, 30, 20)
)

frame9=cbind(frame7, frame8)
#   Training Pulse Duration Intensity Days
#1   Passing   100       60        10   30
#2   Kicking   150       30         5   30
#3 Dribbling   120       45         6   20
