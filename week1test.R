> 
What is the class of the object defined by x <- c(4, TRUE)?

> x <- c(4, TRUE)
> class(x)
[1] "numeric"

If I have two vectors x <- c(1,3, 5) and y <- c(3, 2, 10), what is produced by the expression cbind(x, y)?

> x <- c(1,3, 5)
> y <- c(3, 2, 10)
> cbind(x, y)
     x  y
[1,] 1  3
[2,] 3  2
[3,] 5 10
>>> a 3x2 numeric matrix
> class(cbind(x, y))
[1] "matrix"

Suppose I have a list defined as x <- list(2, "a", "b", TRUE). What does x[[1]] give me?
> x <- list(2, "a", "b", TRUE)
> x[[1]]
[1] 2
> class(x[[1]])
[1] "numeric"
a numeric vector containing the number 2 

Suppose I have a vector x <- 1:4 and a vector y <- 2. What is produced by the expression x + y?
> x <- 1:4
> y <- 2
> x+y
[1] 3 4 5 6
a numeric vector with elements 3, 4, 5, 6.

Suppose I have a vector x <- c(3, 5, 1, 10, 12, 6) and I want to set all elements of this vector that are less than 6 to be equal to zero. What R code achieves this?
> x <- c(3, 5, 1, 10, 12, 6)
> 
> x[x < 6] <- 0
> x
[1]  0  0  0 10 12  6
> 
x[x < 6] <- 0


> data <- read.csv("hw1_data.csv")
> backup <- data

What is the value of Ozone in the 47th row?
data[47, "Ozone"]
[1] 21


How many missing values are in the Ozone column of this data frame?
> sum(is.na(data[,"Ozone"]))
[1] 37

## What is the mean of the Ozone column in this dataset? 
##  Exclude missing values (coded as NA) from this calculation.
> mean(data$Ozone, na.rm=TRUE)
[1] 42.12931


> 
> 
> sub = subset(data, !is.na(Ozone), select = Ozone)
> apply(sub, 2, mean)
   Ozone 
42.12931 


## Extract the subset of rows of the data frame where 
## Ozone values are above 31 and Temp values are above 90. 
## What is the mean of Solar.R in this subset?

> subboolean <- data[data[, "Ozone"] > 31 & data[, "Temp"] > 90, ]
> mean(subboolean$Solar.R, na.rm=TRUE)
[1] 212.8

##  What is the mean of "Temp" when "Month" is equal to 6?
> x <- data[data[, "Month"] == 6,]
> mean(x$Temp)
[1] 79.1

## What was the maximum ozone value in the month of May (i.e. Month = 5)?
> x <- data[ data[, "Month"] == 5, ]
> max(x$Ozone, na.rm=TRUE)
[1] 115## R Week 1 
