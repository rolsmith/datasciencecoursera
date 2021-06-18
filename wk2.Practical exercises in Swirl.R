##%######################################################%##
#                                                          #
####              Coursera > R Programming              ####
####             > Practical R Exercises in             ####
####      swirl Part 2 #Roland Smith # 26 May 2021      ####
#                                                          #
##%######################################################%##


install.packages ("swirl")
library(swirl)

ls()
rm(list=ls())

help.start(swirl)
swirl()
Roland
1
1
1
8
TRUE==TRUE
(FALSE==TRUE)==FALSE
6==7
6<7
10<=10
2
3
5!=7
!5==7
2
1
FALSE&FALSE
TRUE & c(TRUE,FALSE,FALSE)
TRUE && c(TRUE,FALSE,FALSE)
TRUE | c(TRUE,FALSE,FALSE)
TRUE || c(TRUE,FALSE,FALSE)
5 > 8 || 6 != 8 && 4 > 3.9
3
3
isTRUE(6>4)
5
identical('twins','twins')
1
xor(5==6, !FALSE)
2
4
2
2
2
4
2
3
4
2
3
1
2
ints <- sample(10)
ints
ints > 5
which(ints>7)
3
any(ints<0)
all(ints>0)
4
2
rolanddanielsmith@gmail.com
UOexhZaKNXmEXWlw
1
9
Sys.date()
Sys.Date()
mean(c(2,4,5))

# Swirl part 2 - Dates and Times ----

d1 <- Sys.Date()
class(d1)
unclass(d1)
d1
d2 <- as.Date("1969-01-01")
unclass(d2)
t1 <- Sys.time()
t1
class(t1)
unclass(t1)
t2 <- as.POSIXlt(Sys.time())
class(t2)
unclass(t2)
t2
unclass(t2)
str(unclass(t2))
t2$min
weekdays(d1)
months(t1)
quarters(t2)
t3 <- "October 17, 1986 | 08:24"
skip()
t4 <- strptime(t3, "%B %d, %Y %H:%M")
t4
class(t4)
Sys.time()>t1
Sys.time()-t1
difftime(Sys.time(), t1, units='days')
2
rolanddanielsmith@gmail.com
ZhnjlA2PzuupzM7p
