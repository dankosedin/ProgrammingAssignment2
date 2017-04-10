x <- matrix(1, nrow  = 1, ncol = 1)

cache <- makeCacheMatrix(x)

y <- cacheSolve(cache)

print(y)

z <- cacheSolve(cache)

print(z)

cache$set(matrix(2, nrow = 1, ncol = 1))

y <- cacheSolve(cache)

print(y)

z <- cacheSolve(cache)

print(z)
