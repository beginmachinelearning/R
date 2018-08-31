#Assign the value 6+2 to x
x <- 6+2
z<- c(2, 4, 6, 8, 10)
z[3]

z!=10

z[z>5]


mean(Train$Item_Visibility)

table(Train$Item_Fat_Content)

low_fat_items=Train[Train$Item_Fat_Content=='Regular',]


library(SDSFoundations)
bike <- BikeData


BikeData[,7]

BikeData[, 1]

table(BikeData$employed)

BikeData$distance[BikeData$employed==1]

table(BikeData$student)
students_only<-BikeData[BikeData$student==1, ]
table(students_only$cyc_freq)
mean(students_only$distance)
#Read in the dataset and name it bike
bike<-BikeData
#Create a vector of the times
rider_times<-bike$times
#Check the contents of our rider_times vector
rider_times



table(bike[bike$cyc_freq=='Daily',]$gender)

mean(bike[bike$cyc_freq=='Daily',]$age)

daily_riders<-bike[bike$cyc_freq=='Daily',]
mean(daily_riders[daily_riders$gender=='F', ]$age)
mean(daily_riders[daily_riders$gender=='M', ]$age)

daily_riders_male<-daily_riders[daily_riders$gender=='M', ]
daily_riders_male_30<-daily_riders_male[daily_riders_male$age>=30, ]
nrow(daily_riders_male_30)
