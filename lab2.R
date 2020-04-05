#exercise 1 - power function
f1 <- function(a, x=1){
  a^x
}

#exercise 2 - check if element is the vector
f2 <- function(number, vector){
  number %in% vector
}

#exercise 3 - square odd or even elements of vector
f3a <- function(vector) {
  counter <- 1
  for (i in (length(vector)):1) {
    if ((counter %% 2) == 1) {
      vector[i] <- vector[i] * vector[i]
    }
    counter <- counter + 1 
  }
  return(vector)
}

f3b <- function(vector) {
  counter <- 1
  for (i in (length(vector)):1) {
    if ((counter %% 2) == 0) {
      vector[i] <- vector[i] * vector[i]
    }
    counter <- counter + 1 
  }
  return(vector)
}

#exercise 4 - print sorted subsequence
f4 <- function(vector, subLength=3) {
  indexes <- order(vector)[1:subLength]
  return(vector[indexes])
}

#exercise 5 - power matrix
library(matrixcalc) 
f5 <- function(m = matrix(c(0,0,0,0),nrow = 2, ncol = 2)) {
  size <- nrow(m)
  matrix.power(m,size)
}

#exercise 6 - sum operator
"%sum%" <- function(x,y) x+y

#exercise 7
f7 <- function(obj) {
  if (is.logical(obj)) {
    return(obj)
  } else if (is.matrix(obj)) {
    return(c(nrow(obj), ncol(obj)))
  } else if (is.numeric(obj)) {
    return(obj^2)
  }
  return(length(obj))
}