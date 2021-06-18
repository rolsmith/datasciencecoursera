
?cor

#corr <- function(directory, threshold = 0) {
  ## 'directory' is a character vector of 1 indicating
  ## the location of the CSV files
  
  ## 'threshold' is a numeric vector of length 1 indicating
  ## the number of completely observed observations (on all
  ## variables) required to compute the correlation between
  ## nitrate and sulfate, the default is 0
  
  ## return a numeric vector of correlations
  ## NOTE: do not round the result
#}

threshold <-0

corr <- function(directory, threshold=0) {
  
  specdata.list<-c(list.files(directory))
  correlationVector = NULL
  
  for (i in 1:332) {
    read.id.file <- read.csv(paste(directory,[i],specdata.list)
                             read.id.file = na.omit(read.id.file)
                             
                             if (nrow(read.id.file)>threshold) {
                               correlationVector = c(correlationVector,cor(data[,2],data[,3]))
                             }
                             return(correlationVector)
  }
}

corr <- function(directory, threshold=0) {
  
  specdata.list <- c(list.files(directory))
  correlationVector = NULL
  
  for (i in 332) {
    read.id.file <- read.csv(paste(directory,[i],specdata.list))
    read.id.file = na.omit(read.id.file)
    
    if (nrow(read.id.file)>threshold) {
      correlationVector = c(correlationVector, cor(data[,2], data[,3]))
    }
  }
  return (correlationVector)
}

                                         
                         
                         