library(SDSFoundations)
post <- PostSurvey


underclass_happy <- post$happy[post$classification=='Freshman'|post$classification=='Sophomore']
upperclass_happy <- post$happy[post$classification=='Junior'|post$classification=='Senior']

hist(underclass_happy, xlab='Underclassman Happiness', main='Percent of Time Happy')
hist(upperclass_happy, xlab='Upperclassman Happiness', main='Percent of Time Happy')

t.test(underclass_happy, upperclass_happy)

# Make a vector of difference scores
post$diff_happy <- post$happy - post$post_happy

# Check the normality assumption
hist(post$diff_happy, xlab= 'Difference in Happiness over the Semester', main = 'Happy-Post Happy')

# Run dependent t-test
t.test(post$happy, post$post_happy, paired=T)


post <- PostSurvey
on_campus <- post[post$live_campus == 'yes',]
off_campus <- post[post$live_campus == 'no',]
on_campus_happy <- on_campus$happy
off_campus_happy <- off_campus$happy
t.test(on_campus_happy, off_campus_happy)