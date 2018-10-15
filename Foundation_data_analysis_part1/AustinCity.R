library(SDSFoundations)
austin <- AustinCityLimits

grammy_count <- table(austin$Grammy)
prop.table(grammy_count)

grammy_gender <- table(austin$Grammy, austin$Gender)

prop.table(grammy_gender)

prop.table(grammy_gender, 1)


barplot(grammy_gender, legend=T, beside=T)


barplot(prop.table(grammy_gender, 2))

top10 <- head(austin, 10)
table(top10$Grammy)
female_above60=austin[austin$Age>60 & austin$Gender=='F', ]
head(female_above60, 1)$Genre


older <-austin[austin$Age>=30,]
genre <- table(older$Genre)
gender <- table(older$Gender)
twoway <- table(older$Gender,older$Genre)
barplot(twoway, legend=T, beside=T)
prop.table(genre)
prop.table(twoway)

barplot


males <-austin[austin$Gender=='M',]
grammy_males<-males[males$Grammy=='Y',]
no_grammy_males<-males[males$Grammy=='N',]
table(grammy_males$Genre)
table(no_grammy_males$Genre)

fb_100 <- austin[austin$Facebook.100k==1,]

prop.table(table(fb_100$Age.Group), 1)

twoway <- table(austin$Age.Group,austin$Facebook.100k)
prop.table(twoway, 1)




library(SDSFoundations)
austin <- AustinCityLimits
acl <- AustinCityLimits


# Create a table of counts for Gender
gender_tab <-table(acl$Gender)
gender_tab

# Create vector of expected proportions
ExpGender <- c(.50, .50)

# Check expected counts assumption
chisq.test(gender_tab, p=ExpGender)$expected

# Run goodness of fit
chisq.test(gender_tab, p=ExpGender)






gender_top10 <-table(acl$Gender, acl$BB.wk.top10)
gender_top10

two_way <-table(acl$Genre, acl$Twitter.100k)
chisq.test(two_way, correct=FALSE)$expected

two_way

prop.table(two_way, 2)

chisq.test(table(acl$Genre), correct=FALSE)

table(acl$Genre)
# Generate expected counts
chisq.test(gender_top10, correct=FALSE)$expected

# Run test of independence
chisq.test(two_way, correct=FALSE)