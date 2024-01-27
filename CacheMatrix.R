makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  
  # Setter and getter functions that will define  behaviour of the special matrix.
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  get <- function() x
  
  setsolve <- function(solve) s <<- solve
  
  getsolve <- function() s
  
  # The special matrix that contains necessary functions to create return inverse  
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}