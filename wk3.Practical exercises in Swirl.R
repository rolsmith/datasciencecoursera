##%######################################################%##
#                                                          #
####              Coursera > R Programming              ####
####             > Practical R Exercises in             ####
####     swirl Part 3 > Roland Smith # 18 June 2021     ####
#                                                          #
##%######################################################%##

install.packages ("swirl")
library(swirl)

ls()
rm(list=ls())

swirl()
Roland
1
1
1
10
head(flags)
dim(flags)
viewinfo()
class(flags)

cls_list <- lapply(flags, class)
cls_list

class(cls_list)

as.character(cls_list)

cls_vect <- sapply(flags, class)
class(cls_vect)

sum(flags$orange)

flag_colors <- flags[, 11:17]
head(flag_colors)

lapply(flag_colors, sum)
sapply(flag_colors, sum)

sapply(flag_colors, mean)

flag_shapes <- flags[, 19:23]
lapply(flag_shapes, range)
shape_mat <- sapply(flag_shapes, range)
shape_mat
class(shape_mat)
unique(c(3, 4, 5, 5, 5, 6, 6))
unique_vals <- lapply(flags, unique)
print(unique_vals)
sapply(unique_vals, length)

sapply(flags, unique)

lapply(unique_vals, function(elem) elem[2])
1
rolanddanielsmith@gmail.com
FQx7vJS7ldiwNLte
1
11
sapply(flags, unique)
vapply(flags, unique, numeric(1))
ok()

sapply(flags, class)

vapply(flags, class, character(1))
?tapply
table(flags$landmass)
table(flags$animate)

tapply(flags$animate, flags$landmass, mean)
tapply(flags$population, flags$red, summary)
2
tapply(flags$population, flags$landmass, summary)
1
2
rolanddanielsmith@gmail.com
KiEbxjxOwtXt8uJJ
2
