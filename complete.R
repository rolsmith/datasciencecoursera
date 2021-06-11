
# "/Users/RolandSmith/Documents/R-Learning/Coursera/datasciencecoursera/specdata/"

complete <- function(directory,id=1:332){
  
  # identify files to read from disk
  
  # read files in order specified by id argument and create nobs vector
  # containing complete cases
  
  # create a data frame with columns id and nobs, and return to
  # parent environment

complete <- function (directory, id) {
  
  specdata.list=c(list.files(directory))
  nobs <- numeric()
  
  for (i in id) {
    id.file <-specdata.list[(i)]
    read.id.file <- read.csv(paste0("/Users/RolandSmith/Documents/R-Learning/Coursera/datasciencecoursera/specdata/",id.file,sep=""))
    id.file.sum <- sum(complete.cases(read.id.file))
    nobs <- c(nobs, id.file.sum)
  }
  
  data.frame(id,nobs)
}
complete("specdata", 1)
