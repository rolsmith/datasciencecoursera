##%######################################################%##
#                                                          #
####       Coursera > R Programming > Wk2 modules       ####
####        and Quiz #Roland Smith #26 May 2021         ####
#                                                          #
##%######################################################%##


##%######################################################%##
#                                                          #
####              Wk 2: Control Structures              ####
#                                                          #
##%######################################################%##


# Control Structures: if-else ----

if(x>3) {
  y<-10
} else {
  y <-0
  
}

# alternative structure
# highlights operator on 'y'

y <- if(x>3) {
  10
} else {
  0
}

# Control Structures: for ----

# simple 'for' statement
for(i in 1:10) {
  print(i)
}

# alternative loops with same behaviour

x <- c ("a","b","c","d")
x

for(i in 1:4) {
  print(x[i])
}

for(i in seq_along(x)) {
  print(x[i])
}

for(letter in x) {
  print(letter)
}

# the for loop can be nested

x <- matrix(1:6, 2, 3)
x

for (i in seq_len(nrow(x))) {
  for (j in seq_len(ncol(x))) {
    print(x[i,j])
  }
}

# Control Structures: while ----

count <- 0
while(count < 10) {
  print(count)
  count <- count+1
}

# sometimes there will be ore than one condition

z <-5

while (z >= 3 && z<= 10) {
  print (z)
  coin <- rbinom(1,1,0.5)
  
  if (coin==1) { #random walk
    z <- z+1
  } else {
    z <- z-1
  }
}

# Control Structures: repeat, next, break ----

##%######################################################%##
#                                                          #
####               Wk 2: First R Function               ####
#                                                          #
##%######################################################%##

# Simple function

add2 <- function(x,y) {
  x+y
}
add2
add2(3,8)

# Loop function
above10 <- function(x) {
  use <- x >10
  x[use]
}

above <- function (x,n=10) {
  use <- x>n
  x[use]
}
x<- 1:20
above(x)

#Using a matrix

columnmean <- function(y) {
  nc <- ncol(y)
  means <- numeric(nc)
  for(i in 1:nc) {
    means[i] <- mean(y[,i])
  }
  means
}
columnmean(airquality)


columnmean <- function(y, removeNA=TRUE) {
  nc <- ncol(y)
  means <- numeric(nc)
  for(i in 1:nc) {
    means[i] <- mean(y[,i],na.rm= removeNA)
  }
  means
}
columnmean(airquality)

##%######################################################%##
#                                                          #
####              wk 2: Functions             ####
#                                                          #
##%######################################################%##

search()
library()

#Lexical Scoping
make.power <- function(n) {
  pow <- function(x) {
    x^n
  }
  pow
}
#'n' is a free variable
#output is a function where 'n' can be defined
cube <- make.power(3)
square <- make.power(2) 

# 'x' is then required for each of these functions
cube(3)
square(3)

ls(environment(cube))
get("n",environment(cube))
ls() 

# Dates and times ----

x<-Sys.time()
x

p <- as.POSIXlt(x)
names(unclass(p))
p$sec

# strptime function

datestring <- c("November 24, 1977 19:45", "July 27, 1980 09:00")
datestring
x <- strptime(datestring, "%B %D, %Y %H;%M")
x                
class(x)
?strptime

# Wk.2 Quiz sandbox ----

#q1
cube <- function(x,n) {
  x^3
}
cube(3)

#q2
x <- 1:10
if (x>5) {
  x <- 0
}

#q3
f <- function(x) {
  g <- function(y) {
    y+z
  }
  z <-4
  x+g(x)
}
z <-10
z
f(3)

#q4
x<-5
y<- if(x<3) {
  NA
} else {
  10
}

#q5
