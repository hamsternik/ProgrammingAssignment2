## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
### In this function we gain a put (or don't) a matrix
### And have a four "public" methods - special functions for next working with data
### func. "setMatrix" set a matrix if it doesn't gain in func.arguments
### func. "getMatrix" - print our matrix
### func. "setSolveMatrix" - take a "inversible" matrix
### func. "getSolveMatrix" - print input "inversible" matrix
makeCacheMatrix <- function(x = matrix()) {
   m <- NULL
   setMatrix <- function(NewMatrix) {
      x <<- NewMatrix
      m <<- NULL
   } 
   getMatrix <- function() x
   setSolveMatrix <- function(SolveMatrix) m <<- SolveMatrix
   getSolveMatrix <- function() m
   list(setMatrix = setMatrix, getMatrix = getMatrix, setSolveMatrix = setSolveMatrix, getSolveMatrix = getSolveMatrix)
}


## Write a short comment describing this function
### In this func. we take our object x (inctance, if talk with OOP concepts)
### We check our solve matrix - does it exist or not
### and give a message if we caching our solve matrix
### or not and find a solve matrix, after that caching it
cacheSolve <- function(x) {
   m <- x$getSolveMatrix()
   if (!is.null(x$getSolveMatrix())) {
      message("getting cached data")
      return(m)
   }
   Matrix <- x$getMatrix()
   m <- solve(x$setSolveMatrix(Matrix))
   print(m)
}
