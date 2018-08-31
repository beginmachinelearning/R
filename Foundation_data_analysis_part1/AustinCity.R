library(SDSFoundations)
austin <- AustinCityLimits

grammy_count <- table(austin$Grammy)
prop.table(grammy_count)

grammy_gender <- table(austin$Grammy, austin$Gender)

prop.table(grammy_gender)

prop.table(grammy_gender, 1)


barplot(grammy_gender, legend=T, beside=T)


barplot(prop.table(grammy_gender, 2))