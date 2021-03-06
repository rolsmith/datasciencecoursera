
# "/Users/RolandSmith/Documents/R-Learning/Coursera/datasciencecoursera/specdata/"
  # identify files to read from disk
  
  # read files in order specified by id argument and create nobs vector
  # containing complete cases
  
  # create a data frame with columns id and nobs, and return to
  # parent environment

complete <- function (directory, id) {
  
  specdata.list<-c(list.files(directory))
  nobs <- numeric()
  
  for (i in id) {
    id.file <-specdata.list[(i)]
    read.id.file <- read.csv(paste0("/Users/RolandSmith/Documents/R-Learning/Coursera/datasciencecoursera/specdata/",id.file,sep=""))
    id.file.sum <- sum(complete.cases(read.id.file))
    nobs <- c(nobs, id.file.sum)
  }
  
  data.frame(id,nobs)
}

cc <- complete("specdata", c(6, 10, 20, 34, 100, 200, 310))
print(cc$nobs)

cc <- complete("specdata", 54)
print(cc$nobs)

RNGversion("3.5.1")  
set.seed(42)
cc <- complete("specdata", 332:1)
use <- sample(332, 10)
print(cc[use, "nobs"])
