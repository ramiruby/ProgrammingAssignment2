## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setMatInv <- function(solve) m <<- solve
        getMatInv <- function() m
        list(set = set, get = get,
             setMatInv = setMatInv,
             getMatInv = getMatInv)
}

## Write a short comment describing this function


cacheSolve <- function(x, ...) {
        m <- x$getMatInv()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setMatInv(m)
        m
}

