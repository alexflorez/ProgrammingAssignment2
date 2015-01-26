## The purpose is to create a spacial "matrix" and cache its inverse.
## Making use of makeCacheMatrix and cacheSolve

## makeCacheMatrix creates the "matrix" object and cache its inverse.
## mat is a square matrix and has inverse

makeCacheMatrix <- function(mat = matrix()) {
    inv_mat <- NULL
    
    set <- function(other_mat) {
        mat <<- other_mat
        inv_mat <<- NULL
    }
    
    get <- function() { 
        mat
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

## cacheSolve returns the value cached of the inverse matrix ("matrix" created with makeCacheMatrix)
## if this inverse has been previously calculated, otherwise computes the inverse

cacheSolve <- function(mat, ...) {
    inv_mat <- mat$getInvMat()
    if(!is.null(inv_mat)) {
        message("getting cached inverse")
        return(inv_mat)
    }
    data <- mat$get()
    inv_mat <- solve(data, ...)
    mat$setInvMat(inv_mat)
    inv_mat
}
