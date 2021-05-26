##%######################################################%##
#                                                          #
####       Coursera > R Programming > Wk1 modules       ####
####        and Quiz #Roland Smith # 26 May 2021        ####
#                                                          #
##%######################################################%##


install.packages ("swirl")
library(swirl)

getwd()
dir()

ls()

x <- 1
print(x)
x

1/Inf

# R Programming > Week 1 > Data Types - Vectors ----

x <- vector("numeric", length= 10)
x
y <- c(T,2)
y
y <- c("a", T)
y
y <- c(1.7,"a")
y
class(y)

x <- 0:6
x
class(x)
as.numeric(x)
x
as.logical(x)
x
as.character(x)
x

# R Programming > Week 1 > Data Types - Matrices ----

m <- matrix (nrow=2, ncol=3)
m
dim(m)
attributes(m)
m <- 1:10
m
dim(m) <- c(2,5)
m

# R Programming > Week 1 > Data Types - Factors ----

x <- factor(c("yes", "yes", "no", "yes", "no"))
x

table(x)

unclass(x)
attr(x,"levels")

x <- factor(c("yes","yes","no","yes","no"), levels = c("yes","no"))
x

#R Programming > Week 1 > Data Types - Missing Values ----
# 
x <- c(1,2,NA,10,3)
x
is.na(x)
is.nan(x)

#R Programming > Week 1 > Data Types - Data Frames ----
x <- data.frame(foo= 1:4, bar=c(T,T,F,F))
x
nrow(x)
ncol(x)

#R Programming > Week 1 > Data Types - Names Attribute ----
x <- 1:3
names(x)
names(x) <- c("foo","bar","norf")
x
names(x)

x <- list(a=1,b=2,c=3)
x
names(x)

m <- matrix(1:4, nrow=2, ncol=2)
dimnames(m) <- list(c("a","b"),c("c","d"))
m

#R Programming > Week 1 > Textual Data ----
#dput-ting R objects

y <- data.frame(a=1,b="a")
y
dput(y)

dput(y,file="y.R")
new.y <- dget("y.R")
new.y

#R Programming > Week 1 > Matrix Subsetting ----

x <- matrix (1:6, 2, 3)
x
x[1,2]    
x[2,1]

#Indices can be missing

x[1,]
x[,2]

# Single element of a matrix is a VECTOR by default

x[1,2]

# This can be turned off by setting >drop = FALSE

x[1,2,drop=F]

x[1,]

x[1,,drop=F]

#R Programming > Week 1 > Subsetting - Partial Matching ----

x <- list(aardvark = 1:5)
x
x$a
x[["a"]]
x[["a", exact=FALSE]]

#R Programming > Week 1 > Subsetting - Removing Missing Values ----

x <- c(1,2,NA,4,NA,5)
x
bad <- is.na(x)
bad
x[!bad]

# Removing NA values from multiple subsets

x <- c(1,2,NA,4, NA,5)
y <- c("a","b", NA,"d",NA,"f")
x
y
good <- complete.cases(x,y)
good
x[good]
y[good]

airquality [1:6,]
good <- complete.cases(airquality)
good
airquality[good,][1:6,]

#R Programming > Week 1 > Vectorised Operations ----

x <- matrix (1:4,2,2,)
x
y<-(matrix(rep(10,4),2,2))
y
x*y ## element-wise multiplication

x%*%y ## true matrix multiplication

#R Programming > Week 1 > Quiz
#q.4
x <- 4L
class(x)

#q.5
X <- c(4,TRUE)
class(X)

#q.6
x<-c(1,3,5)
y<-c(3,2,10)
rbind(x,y)

#q.8
x<-list(2,"a","b",TRUE)
x
x[[2]]

#q.9
x<-1:4
x
y<-2:3
y
q9 <- x+y
q9
class(q9)

#q.10
x <- c(3,5,1,10,12,6)
x
x[x%in% 1:5]<-0
x
x <- c(3,5,1,10,12,6)
x

#q.11
read.csv("/Users/RolandSmith/Documents/R-Learning/Coursera/Coursera Assessments/R-programming-wk1/hw1_data.csv")
hw1.data <- "/Users/RolandSmith/Documents/R-Learning/Coursera/Coursera Assessments/R-programming-wk1/hw1_data.csv"
hw1.data <- read.csv("/Users/RolandSmith/Documents/R-Learning/Coursera/Coursera Assessments/R-programming-wk1/hw1_data.csv")
hw1.data
head(hw1.data)
name(hw1.data)
colnames(hw1.data)

#q.12
hw1.data[1:2,]

#q.13
dim(hw1.data)

#q.14
hw1.data[152:153,]

#q.15
hw1.data[47,"Ozone"]

#q.16
ozone.col <- hw1.data[,"Ozone"]
ozone.col
na.ozone.col <- is.na(ozone.col)

na.strip.ozone.col <- ozone.col[na.ozone.col]
na.strip.ozone.col
length(na.strip.ozone.col)

#q.17
strip.ozone.col <- ozone.col[!na.ozone.col]
strip.ozone.col
mean(strip.ozone.col)

#q.18
hw1.data
hw1.data.complete <- complete.cases(hw1.data)
hw1.data.complete
hw1.data.clean <- hw1.data[hw1.data.complete,][,]
hw1.data.clean
hw1.oz31.t90 <- hw1.data.clean[(hw1.data.clean$Ozone>31 & hw1.data.clean$Temp>90),]
hw1.oz31.t90
hw1.oz31.t90.solar <- hw1.oz31.t90[,"Solar.R"]
hw1.oz31.t90.solar
mean(hw1.oz31.t90.solar)

#q.19
hw1.data
hw1.month6 <- hw1.data[hw1.data$Month==6,]
hw1.month6
hw1.month6.temp <- hw1.month6[,"Temp"]
hw1.month6.temp
mean(hw1.month6.temp)

#q.20
hw1.data
hw1.month5 <- hw1.data[hw1.data$Month==5,]
hw1.month5
hw1.month5.ozone <- hw1.month5[,"Ozone"]
hw1.month5.ozone
(hw1.month5.ozone)
