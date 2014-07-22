## Put comments here that give an overall description of what your
## functions do

#These functions will set a matrix and solve it
#The solved matrix will be stored in the cache in case it needs to be called again

## Write a short comment describing this function

#This function gets a matrix and solves it

makeCacheMatrix <- function(x = matrix()) {
     m = NULL
     set = function(y){
          x <<- y
          m <<- NULL
     }
     get <- function()x
     setmatrix <- function(solve) m <<- solve
     getmatrix <- function() m
     list (set = set, get = get,
           setmatrix = setmatrix,
           getmatrix = getmatrix)
}


## Write a short comment describing this function

#This function returns the cached matrix if it has already been 
#solved
#Else it returns the newly solved matrix

cacheSolve <- function(x=matrix(), ...) {
        ## Return a matrix that is the inverse of 'x'
     m <- x$getmatrix()
     if(!is.null(m)) {
          message("getting cached data")
          return(m)
     }
     matrix <- x$get()
     m <- solve(matrix, ...)
     x$setmatrix(m)
     m
     
}
