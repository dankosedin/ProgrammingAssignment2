## Programming Assignment 2: Lexical Scoping
## Caching the Inverse of a Matrix

## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.

## cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
## If the inverse has already been calculated (and the matrix has not changed), then cacheSolve should retrieve the inverse from the cache.

## makeCacheMatrix creates a special "vector" of operations with object and corresponding cache value
## Four operations available: get and set value of matrix, get and set value of inverse. If matrix changes - cache cleared

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function()
    x
  setinverse <- function(inverse)
    i <<- inverse
  getinverse <- function()
    i
  list(
    set = set,
    get = get,
    setinverse = setinverse,
    getinverse = getinverse
  )
}


## Calculates inverse of matrix. If there is already cached value - returns it. If not - calculates and cache

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  i <- x$getinverse()
  if (!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
}
