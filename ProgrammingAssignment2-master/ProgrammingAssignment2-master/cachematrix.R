## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## makeCacheMatrix will create a special "matrix" 
##object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  ## x is a square invertible matrix
  ## return: a list containing functions to
  ##              1. set the matrix
  ##              2. get the matrix
  ##              3. set the inverse
  ##              4. get the inverse
  ##         this list is used as the input to cacheSolve()
  
Cacheinv <- NULL
## initialize inv as NULL; will hold value of matrix inverse 
set <- function(y) {                   
## define the set function to assign new value to an object in an environment different from the current environment 
 x <<- y                            
## value of matrix in parent environment
 Cacheinv <<- NULL                       
## if there is a new matrix, reset inv to NULL
  }
get <- function() x                     
  ## define the get fucntion - returns value of the matrix argument
setinverse <- function(inverse) Cacheinv <<- inverse  
  ## assigns value of inv in parent environment
getinverse <- function() Cacheinv                     
  ## gets the value of inv where called
list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)  
  ## you need this in order to refer 
}


## Write a short comment describing this function
##cacheSolve(): computes the inverse of the "matrix" returned 
##by makeCacheMatrix(). If the inverse has already been calculated and the 
##matrix has not changed, it'll retrieves the inverse from the cache directly.

cacheSolve <- function(x, ...) {
  ## X is a output of makeCacheMatrix()
  ## return: inverse of the original matrix input to makeCacheMatrix()
  ## Return a matrix that is the inverse of 'x'
  Cacheinv <- x$getinverse()
  if(!is.null(Cacheinv)) {
    # if the inverse has already been calculated
      message("getting cached data")
    # get it from the cache and skips the computation.
       return(Cacheinv)
  }
  # otherwise, calculates the inverse 
data <- x$get()
Cacheinv <- solve(data, ...)
# sets the value of the inverse in the cache via the setinv function.
x$setinverse(Cacheinv)
Cacheinv
}
  