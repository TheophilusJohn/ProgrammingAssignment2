## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  I <- NULL
  set <- function(y) {
    x <<- y
    I <<- NULL
  }
  get <- function() x
  setI <- function(inverse){
    I <<- inverse
  } 
  getI <- function(){ 
    I
  }
  list(set = set, get = get, setI = setI, getI = getI)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  I <- x$getI()
  if (!is.null(I)) {
    message("getting cached data")
    return(In)
  }
  data <- x$get()
  I <- solve(data, ...)
  x$setIn(I)
  I
}

