## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(mat = matrix()) {

    mat_inv <- NULL
    set <- function(in_mat) {
      mat <<- in_mat
      mat_inv <<- NULL
    }
    get <- function() mat
    setinv <- function(solve) mat_inv <<- solve
    getinv <- function() mat_inv
    list(set = set, get = get,
         setinv = setinv,
         getinv = getinv)

}


## Write a short comment describing this function

cacheSolve <- function(mat, ...) {
        ## Return a matrix that is the inverse of 'x'
  mat_inv <- mat$getinv()
  if(!is.null(mat_inv)) {
    message("getting cached data")
    return(mat_inv)
  }
  data <- mat$get()
  mat_inv <- solve(data, ...)
  mat$setinv(mat_inv)
  mat_inv
  
}
