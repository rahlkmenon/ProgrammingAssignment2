## Functions that cache the inverse of a matrix.
## Function is creating a special "matrix" object that can cache its inverse.

makeavector <- function(x = matrix()) {
        v <- NULL
        set <- function(y) {
                x <<- y
                v <<- NULL
        }
        cacheVector <- function() x 
        setinverse <- function(inverse) v <<- inverse
        cacheVectorinverse <- function() v
        list(set = set,
             cacheVector = cacheVector,
             setinverse = setinverse,
             cacheVectorinverse = cacheVectorinverse)
}

cacheSolve <- function(x, ...) {
        v <- x$cacheVectorinverse()
        if (!is.null(i)) {
                message("getting cached data")
                return(v)
        }
        data <- x$cacheVector()
        v <- solve(data, ...)
        x$setinverse(v)
        v
}
