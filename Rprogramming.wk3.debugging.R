##%######################################################%##
#                                                          #
####       Coursera > R Programming > Wk3 modules       ####
####       Roland Smith > 18 june 2021        ####
#                                                          #
##%######################################################%##

#Wk3 Debugging

## Example of a 'warning'
log(-1)

## Example of an 'error'
### simple function
printmessage <- function(x) {
  if(x>0)
    print("x is greater than zero")
  else
    print("x is less than or equal to zero")
  invisible(x)
}

printmessage(1)

### creates an error with NA

printmessage(NA)

### redifine the function to fix this error

printmessage2 <- function(x) {
  if (is.na(x))
    print("x is a missing value!")
  else if(x>0)
    print("x is greater than zero")
  else
    print("x is less than or equal to zero")
  invisible(x)
}
printmessage2(NA)

x <- log(-1)
printmessage2(x)

## Debugging Tools - Basic Tools ----

### Examples of Traceback

rm(list=ls())

mean (x)
trace0back()

#### You have to call traceback _immediately_

?summary
