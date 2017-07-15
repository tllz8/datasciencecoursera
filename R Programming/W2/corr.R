corr<-function(directory,threshold=0){
    files <- list.files(directory,full.names = TRUE)
    dat <- vector("numeric", length = 0)
    
    for(i in 1:length(files)){
        dattemp <- read.csv(files[i],header=TRUE)
        dattemp <- dattemp[complete.cases(dattemp),]
    
        csum<-nrow(dattemp)
        
        if(csum > threshold){
            dat <- c(dat,cor(dattemp$nitrate,dattemp$sulfate))
        }
        
    }
    dat
}