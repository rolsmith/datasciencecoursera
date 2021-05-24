##%######################################################%##
#                                                          #
####         Sandbox for Coursera R Programming         ####
####         Course # Roland Smith # 21/05/2021         ####
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

#R Programming > Week 1 > Reading Data ----

