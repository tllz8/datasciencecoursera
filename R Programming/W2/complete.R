complete <- function(directory, id = 1:332){
    files <- list.files(directory, full.names = TRUE)
    dat <- data.frame()
    # nobs <- vector()
    for(i in id){
        dattemp <- read.csv(files[i],header=TRUE)
        #temp<- read.csv(files[i],header=TRUE)
        dattemp<-na.omit(dattemp)
        nobs<-nrow(dattemp)
        dat<-rbind(dat,data.frame(i,nobs))
       # dat <- rbind(dat, read.csv(files[i]))
       # dat2 <- dat[which(dat$ID == i),]
       # nobs[i] <- sum(complete.cases(dat))
     }
     dat 
     # nobstable <- data.frame(cbind(id, nobs))
    # nobstable
}