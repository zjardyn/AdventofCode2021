dat <- read.table("../data/day1.txt")
dat1 <- dat$V1

vals <- vector(length = (length(dat1)-1))
for(i in 1:(length(dat1)-1)) {
    firstval <- dat1[i]
    secondval <- dat1[i+1]
    if(secondval > firstval){
        vals[i+1] <- "increasing"
    } else {
        vals[i+1] <- "decreasing"
    }
}
dat2 <- cbind(dat1, vals)
sum(dat2[,2] == "increasing")
