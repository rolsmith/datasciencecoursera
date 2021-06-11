
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

directory="specdata"
specdata.list=c(list.files(directory))
specdata.list

read.id.file <- read.csv(paste(directory,[i],s)