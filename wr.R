library(SDSFoundations)
wr <- WorldRecords

mens_800= wr[wr$Event=='Mens 800m', ]

linFit(mens_800$Record, mens_800$Year)

nrow(table(wr$Event))

wr_usain <- wr[wr$Athlete=='Usain Bolt', ]

wr_womens_mile <- wr[wr$Event=='Womens Mile', ]
wr_womens_mile <- wr_womens_mile[wr_womens_mile$Record<260, ]
wr_womens_mile

WR <- WorldRecords
#Subset the data
menshot <- WR[WR$Event=='Mens Shotput',]
womenshot <- WR[WR$Event=='Womens Shotput',] 

#Create scatterplots
plot(menshot$Year,menshot$Record,main='Mens Shotput World Records',xlab='Year',ylab='World Record Distance (m)',pch=16)
plot(womenshot$Year,womenshot$Record,main='Womens Shotput World Records',xlab='Year',ylab='World Record Distance (m)',pch=16)

#Run linear models
linFit(menshot$Year, menshot$Record)
linFit(womenshot$Year,womenshot$Record)

mensmile <- WR[WR$Event=='Mens Mile',]
womensmile <- WR[WR$Event=='Womens Mile',] 
plot(mensmile$Year,mensmile$Record,main='Mens Shotput World Records',xlab='Year',ylab='World Record Distance (m)',pch=16)
plot(womensmile$Year,womensmile$Record,main='Womens Shotput World Records',xlab='Year',ylab='World Record Distance (m)',pch=16)
linFit(mensmile$Year, mensmile$Record)
linFit(womensmile$Year, womensmile$Record)



menspv <- WR[WR$Event=='Mens Polevault',]

max(menspv$Record)

menspvover6 <- menspv[menspv$Record>6, ]
menspvafter70 <- menspv[menspv$Year>=1970, ]

plot(menspvafter70$Year,menspvafter70$Record,main='Mens Shotput World Records',xlab='Year',ylab='World Record Distance (m)',pch=16)
linFit(menspvafter70$Year,menspvafter70$Record)