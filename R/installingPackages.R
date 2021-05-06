# Installing packages
install.packages("dplyr")

#load the dplyr package from our library
library(dplyr)

# be specific for the package you want to use a function from
#dplyr::filter()

# import data into R to work with it
# assign the data to a named object
dat <- read.csv("data/inflammation-01.csv")

# query the data using the `base` R commands
# query the data
dat

# look at the first couple of rows with the `head()` function
head(dat)

# What type of data structures does R use
# vectors
# 1 dimensional data

# create a vector with the concatenate function `c()`
vec1 <- c(1,2,3,4,5)
vec1

# access the vector using square brackets or indices
vec1[3]

# how to create vectors with short-hand `:`
# : represents a sequence
1:5
5:1
-5 : 10

# we can use a function to create a sequence
seq(from = -4,
    to = 3)
# seq help
?seq

seq(from = 0, 
    to = 10,
    by = 2)

# Lets look at two dimensional data again
head(dat)

# access data from this data.frame using square brackets
# First row and first column
dat[1,1] 

# third row and second column
dat[3,2] 

# access a snippit of the data.frame
dat[1:5, 1:5]

# other two dimensional data structures
# matrixs

# three dimensional data
# lists and arrays

# we can work with data in different structures because R is a
# class dependant language 
class(dat)
class(1:6)

# change or coerce classes of data using special `as` functions
dat_mat <- as.matrix(dat)
class(dat_mat)

# write data to a file.
?write.csv

# create a folder called create of changed data
dir.create("cache")

# write the dat data.frame object as a csv to the cache directory
write.csv(x = dat,
          file = "cache/inflammation_clean.csv")

# functions for reading in from excell
readxl::read_xlsx()

# cars dataset
head(cars)
# analysis of variance
cars_a <- aov(speed ~ dist,
              data = cars)
summary(cars_a)

# function for linear model
cars_lm <- aov(speed ~ dist,
              data = cars)
summary(cars_lm)
