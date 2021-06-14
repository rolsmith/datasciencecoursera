pollutantmean <- function(directory, pollutant, id=1:332) {
  
  specdata.list=c(list.files(directory))
  
  x <- numeric()
  
  for (i in id) {
    id.file <-specdata.list[(i)]
    read.id.file <- read.csv(paste0("/Users/RolandSmith/Documents/R-Learning/Coursera/datasciencecoursera/specdata/",id.file,sep=""))
    x <- c(x, read.id.file[[pollutant]])
    }
  mean(x, na.rm=T)
}

pollutantmean("specdata", "sulfate", 1:10)
pollutantmean("specdata", "nitrate", 70:72)
pollutantmean("specdata", "sulfate", 34)

pollutantmean("specdata", "nitrate")
