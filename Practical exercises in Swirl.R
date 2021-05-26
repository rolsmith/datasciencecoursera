##%######################################################%##
#                                                          #
####              Coursera > R Programming              ####
####             > Practical R Exercises in             ####
####      swirl Part 1 #Roland Smith # 26 May 2021      ####
#                                                          #
##%######################################################%##


install.packages ("swirl")
library(swirl)

ls()
rm(list=ls())
1
1
1

# Section 1: Basic Building Blocks ----

5+7
x <- 5+7
x
y <- x-3
y

z <- c(1.1,9,3.14)
?c

?c
z
c(z,555,z)
z*2+100
my_sqrt <- sqrt(z-1)
2
my_sqrt
my_div <- z/my_sqrt
2
my_div
c(1,2,3,4)+c(0,10)
c(1,2,3,4)+c(0,10,100)

my_div
2
rolanddanielsmith@gmail.com

#Section 2: Workspace and Files ----
getwd()
ls()
x <-9
ls()
list.files()
?list.files
args(list.files)
old.dir <- getwd()
dir.create("/Users/RolandSmith/Documents/R-Learning/Coursera/datasciencecoursera/testdir")
dir.create("testdir")
setwd("testdir")
file.create("mytest.R")
list.files()
file.exists()
file.exists("mytest.R")
file.info("mytest.R")
file.rename(from="mytest.R",to="mytest2.R")
file.copy(from="mytest2.R",to="mytest3.R")
file.path("mytest3.R")
file.path("/folder1/folder2/mytest3.R")
file.path("folder1","folder2")
?dir.create
dir.create(file.path("testdir2","testdir3"),recursive=TRUE)
setwd(old.dir)

#Section 2: Sequences and Numbers ----
1:20
pi:10
15:1
?`:`
seq(1,20)
seq(0,10, by=0.5)
my_seq <- seq(5,10, length=30)
length (my_seq)
1:length(my_seq)
seq(along.with=my_seq)
seq_along(my_seq)
rep(0,times=40)
rep(c(0,1,2),times=10)
rep(c(0,1,2), each=10)
1
rolanddanielsmith@gmail.com
LAyNkjxKcUK9jVz4
1
4
num_vect <- c(0.5,55,-10,6)
tf <- num_vect<1
1
tf
num_vect >= 6
2
2
2
my_char <- c("My", "name", "is")
my_char
paste(my_char, collapse=" ")
my_name <- c(my_char, "Roland")
my_name
paste(my_name, collapse=" ")
paste("Hello", "world!", sep=" ")
paste(c(1:3), c("X", "Y", "Z"),sep="")
paste(LETTERS,1:4, sep="-")
1
rolanddanielsmith@gmail.com
6qjYcD2dFTwd27at
1
5
x <- c(44,NA,5,NA)
x*3
y <- rnorm(1000)
z <- rep(NA,1000)
my_data <- sample(c(y,z),100)
my_na <- is.na(my_data)
my_na
my_data == NA
sum(my_na)
my_data
0/0
Inf-Inf
1
rolanddanielsmith@gmail.com

#Section 6: Practice Programming Assignment: swirl Lesson 6: Subsetting Vectors

x
x[1:10]
3
1
x[is.na(x)]
y <- x[!is.na(x)]
y
4
y[y>0]
x[x>0]
x[!is.na(x)&x>0]
x[c(3,5,7)]
x[0]
x[3000]
x[c(-2,-10)]
x[-c(2,10)]
vect<- c(foo = 11, bar = 2, norf = NA)
vect
names(vect)
vect2 <- c(11, 2, NA)
names(vect2) <- c("foo","bar","norf")
?identical()
identical(vect,vect2)
2
3
vect["bar"]
vect[c("foo","bar")]
1
rolanddanielsmith@gmail.com

#Section 7: Practice Programming Assignment: Matrices and Data Frames

my_vector <-1:20
my_vector
dim(my_vector)
length(my_vector)
dim(my_vector) <- c(4,5)
dim(my_vector)
attributes(my_vector)
my_vector
class(my_vector)
my_matrix <- my_vector
?matrix
my_matrix2 <- matrix(data=1:20,nrow=4,ncol=5)
identical(my_matrix,my_matrix2)
patients <- c("Bill","Gina","Kelly","Sean")
cbind(patients,my_matrix)
my_data <- data.frame(patients,my_matrix)
my_data
class(my_data)
cnames <- c("patient", "age", "weight","bp", "rating", "test")
colnames(my_data) <- cnames
my_data
2
rolanddanielsmith@gmail.com
x6hZur1TGh1XeXSK
