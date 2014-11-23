## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## --------------------------------------------------------------

## the make makeCacheMatrix function takes a matrix input and creates a list
## of functions as an output.  

## The cacheSolve function solves the inverse of the matrix and if you run it
## again without changing the initial matrix it will return the results from
## cache instead of re-calculating it

## to test code, try running the following:
## a<- makeCacheMatrix(matrix(1:4,2,2))
## a$get()
## a$getmean()
## cacheSolve(a)

## Note: I did not re-name variables to make it easy to compare back to
## the sample function


makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setmean <- function(solve) m <<- solve
    getmean <- function() m
    list(set = set, get = get,
         setmean = setmean,
         getmean = getmean)
    
    
    
#end of makeCacheMatrix function
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

    m <- x$getmean()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setmean(m)
    m

#end of cacheSolve function
}
