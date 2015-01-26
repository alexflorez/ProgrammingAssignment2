## The purpose is to create a spacial "matrix" and cache its inverse.
## Making use of makeCacheMatrix and cacheSolve

## makeCacheMatrix creates the "matrix" object and cache its inverse.
## x is a square matrix and has inverse

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    
    set <- function(y) {
        x <<- y
        inv_mat <<- NULL
    }
    
    get <- function() { 
        x
    }
    
    setInvMat <- function(inverse_matrix) {
        inv_mat <<- inverse_matrix
    }
    
    getInvMat <- function() {
        inv_mat
    }
    list(set = set, get = get,
         setInvMat = setInvMat,
         getInvMat = getInvMat)
}


## cacheSolve computes the inverse of the "matrix" returned by makeCacheMatrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
