## Matrix inversion is usually a costly computation and there may be some
## benefit to caching the inverse of a matrix rather than computing it
## repeatedly.  The functions below cache the inverse of a matrix.


## This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
        im <- NULL
        im <<- solve(x)
}


## This function computes the inverse of the special "matrix" returned by
## the function above.  If the inverse has already be calculated (and the 
## matrix has not changed), then the function below should retrieve the inverse
## from the cache.

cacheSolve <- function(x, ...) {
        tm <- solve(x)
        if(identical(tm, im)){
                message("getting cached data")
                return(im)
        }
        tm
}
