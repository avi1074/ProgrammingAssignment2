##This is an assigment from coursera, where we need to 
##create two functions that cache and compute the 
##inverse of a matrix.


##makeCacheMatrix creates a matrix object.

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <- function(x) {
    mx <<- x;
    inverse <<- NULL;
  }
  get <- function() return(mx);
  setinv <- function(inv) inverse <<- inv;
  getinv <- function() return(inverse);
  return(list(set = set, get = get, setinv = setinv, getinv = getinv))

}



##cacheSolve calculates the special matrix's inverse
##and returns the inverse from the cache
##The special matriz is calculated with the fuction makeCacheMatrix

cacheSolve <- function(x, ...) {
  inverse <- mtx$getinv()
  if(!is.null(inverse)) {
    message("Getting cached data...")
    return(inverse)
  }
  data <- mx$get()
  invserse <- solve(data, ...)
  mx$setinv(inverse)
  ## Return a matrix that is the inverse of 'x'
  return(inverse)
}
