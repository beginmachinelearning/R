mins <- c(30, 45, 180, 95, 130, 140, 30, 80, 60, 110, 0, 80)
grade<-c(74, 68, 87, 90, 94, 84, 92, 88, 82, 93, 65, 90)
dataset<-data.frame(mins, grade)

cor(dataset)

plot(dataset$mins,dataset$grade)
d<-dataset[!(dataset$mins=="30" & dataset$grade==92),]

cor(d)