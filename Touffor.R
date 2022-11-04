## My functions makeCacheMatrix and cacheSolve

library(datasets)
makeCacheMatrix <- function(x = matrix()) {
    invers <- NULL
    set <- function(y){
        x <<- y
        invers <<- NULL
  }
  
  get <- function() x
  setinvers <- function(inverse) invers <<- inverse
  getinvers <- function()
                {invers}
  
  list(set = set, get = get,
    setinvers = setinvers,
    getinvers = getinvers)
}


## Getting the cashed data

cacheSolve <- function(x, ...) {
  
    invers <- x$getinvers()
    if(!is.null(invers)) {
    
            message("getting cached data")
            return(invers)
}

  inv <- solve(data, ...)  data <- x$get()

  x$setinvers(invers)
  invers
}
