## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## the next function gets number to do a matrix and set the number to get the inverse

makeCacheMatrix <- function(x = matrix()) {
  n <- NULL
  
  setmat <- function(y){
    x <<- y
    n <<- NULL
  }
  
  getmat <- function() {
    x
  }
    
  setinvmat <- function(inverse) {
    n <<- NULL
  }
  
  getinvmat <- function() {
    n
  }
  
  list(setmat = setmat, getmat = getmat,
       setinvmat = setinvmat, getinvmat <- getinvmat)
  
}



## Write a short comment describing this function
## This function caches and solves the Inverse of a Matrix
  
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
 
  n <- x$getinvmat()
        
  if(!is.null(n)) {
    message("getting cached data")
    return(n)
  }
  
  data <- x$getmat()
  n <- solve(data)  
  x$setinvmat(n)
  n   
}

