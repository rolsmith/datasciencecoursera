##%######################################################%##
#                                                          #
####       Coursera > R Programming > Wk3 modules       ####
####        Roland Smith > 18 june 2021        ####
#                                                          #
##%######################################################%##

#Wk3 Loop Functions

## mapply ----

list(rep(1,4), rep(2,3), rep(3,2), rep(4,1))
mapply(rep,1:4, 4:1)

### Simple vector providing random normal noise

noise <- function (n, mean, sd) { 
  rnorm(n, mean, sd)
}
noise (5,1,2)

### Doesn't work correctly with a vector of arguments
noise (1:5, 1:5, 2)

### Rather using mapply
mapply(noise, 1:5, 1:5,2)

## tapply ----

str(tapply)

### Taking group means

#### vector of 30 variables - rnorm, runif, rnorm
x <- c(rnorm(10), runif(10), rnorm(10,1))
x

#### generate factor levels
f <- gl(3,10)
f

#### find the mean of each level
tapply(x,f,mean)

#### the same result without simplifying
#### (a list)
tapply(x,f,mean, simplify = F)

#### find group ranges
tapply(x, f, range)

## Loop Functions - split ----

str(split)
?split

### split example: three groups (as above)
x <- c(rnorm(10), runif(10), rnorm(10,1))
x
?gl

f <- gl(3,10)
f
split(x,f)

### It is common to combine split with lapply
### (here to find the mean of each level)

lapply(split(x,f), mean)

### Using split with Data Frames

library(datasets)
head(airquality)

#### calculate (for example) the mean of ozone, solar radiation
#### wind and temperature in, within each month.

airquality$Month

s <- split(airquality, airquality$Month)
s

lapply(s, function(x) colMeans(x[,c("Ozone", "Solar.R", "Wind")]))

##### Using sapply to simplify this result to a matrix

sapply(s, function(x) colMeans(x[,c("Ozone", "Solar.R", "Wind")]))

##### Removing NAs sapply to simplify this result to a matrix

sapply(s, function(x) colMeans(x[,c("Ozone", "Solar.R", "Wind")], na.rm=TRUE))

### Splitting on more than one level

x <- rnorm(10)
x

f1 <- gl(2,5)
f1

f2 <- gl(5,2)
f2

##### Therefore - 2 levels in f1; 5 levels in f2

interaction(f1, f2)

##### This means 10 levels in total

##### use the split function
##### (it will automatically use interaction)

str(split(x,list(f1,f2)))

##### To get rid of - or drop - the empty levels

str(split(x,list(f1,f2), drop=T))

## Debugging Tools - Diagnosing the Problem ----
