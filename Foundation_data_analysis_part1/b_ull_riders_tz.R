library(SDSFoundations)




USA <-bull[bull$Country=="USA",]

# Summarize the bull rider weights
mean(USA$Weight)
sd(USA$Weight)

# Visualize the weight distribution
hist(USA$Weight, main='Histogram of US Bull Rider Weights',xlab='Weight (lbs)')

# Run the single sample t-test
t.test(USA$Weight, mu=190)


r2014_5 <- bull[bull$Events14>5,]

mean(r2014_5$RidePer14)