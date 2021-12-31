# use day 1 data
dat <- read.table("../data/day1.txt")
dat1 <- dat$V1


vals <- vector(length = length(dat1))
for(i in seq(dat1)){
    vals[i] <- dat1[i] + dat1[i+1] + dat1[i+2]
}
vals_noNA <- na.omit(vals)

vals2 <- vector(length = length(vals_noNA))
for(i in 1:(length(vals_noNA)-1)) {
    firstval <- vals_noNA[i]
    secondval <- vals_noNA[i+1]
    if(secondval > firstval){
        vals2[i+1] <- "increasing"
    } else {
        vals2[i+1] <- "decreasing"
    }
}
sum(vals2 == "increasing")
