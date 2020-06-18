                ## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# makeCacheMatrix creates a special "matrix" object that caches the inverse of a square (invertible) matrix

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        setinverse <- function(inverse) i <<- inverse  # this fxn stores the inverse i.e. cached inverse
        getinverse <- function() i                     # this fxn gets the cached inverse 
        getmat <- function() X 
        list(setinverse = setinverse, 
             getinverse = getinverse,
             getmat = getmat)

}


## Write a short comment describing this function

# cacheSolve computes the inverse of the special "matrix" returned by makeCacheMatrix. 
# If the inverse has already been calculated (and the matrix has not changed), then
# cachesolve will retrieve its inverse from the cache 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- X$getinverse()                     # We first get the inverse then return it if not null
        if(!is.null(i)) {
                message("getting cached data")
                return(i)                       # An explicit return to stop this block of code when done
        }
        i <- solve(X$getmat(), ...)             # Otherwise, we compute the inverse of our original matrix 
        X$setinverse(i)                         # Then set the inverse matrix in the cache
        i                                       # Implicit return of value in i 
}
