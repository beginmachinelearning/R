library(SDSFoundations)

wb <- WorldBankData
world <- WorldBankData

wb_income <- wb[wb$IncomeGroup=='Low income', ]

wb[wb$Country=='Aruba',]
wb_aus <- wb[wb$Country=='Australia',]



# Subset data for just the United States and name the new data frame "us"
us <- world[world$Country.Code == "BRA",]

# Select the years from 1990 and name the new data frame "us_select"
us_select <- us[us$year >= 1990, ]

# Create a new variable in our datset called internet.mil to make the number of users more interpretable (into millions)
us_select$internet.mil <- us_select$internet.users / 1000000

us_select$internet.mil

# Create a new variable in our dataset called time that represents "years since 1990"
us_select$time <- us_select$year - 1990

# Select the first 10 years (from 1990 to 1999) and name the new data frame "us_select_10"
us_select_10 <- us_select[us_select$time < 10,]

# Use a function to fit an exponential and logistic model for 1990-1999
expFit(us_select_10$time, us_select_10$internet.mil)
logisticFit(us_select_10$time, us_select_10$internet.mil)

# Based on the prior model parameters, predict the number of internet users in 2006
e <- expFitPred(us_select_10$time, us_select_10$internet.mil, 16)
l <- logisticFitPred(us_select_10$time, us_select_10$internet.mil, 16)


denmark_select$internet.mil <- denmark_select$internet.users / 1000000


denmark_select$internet.users
denmark <- world[world$Country.Code == "DNK",]
denmark_select <- denmark[denmark$year >= 1990, ]
denmark_select$time <- denmark_select$year - 1990

expFit(denmark_select$time, denmark_select$internet.mil)
logisticFit(denmark_select$time, denmark_select$internet.mil)

denmark_select$internet.mil

bra <- world[world$Country.Code == "BRA",]