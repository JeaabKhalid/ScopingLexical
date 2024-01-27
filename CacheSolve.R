cacheSolve <- function(x, ...) {
  
  ## Try to get the inverse, if possible from Cache  
  s <- x$getsolve()
  if(!is.null(s)) {
    message("getting cached data")
    return(s)
  }
  
  ## Not found in cache, hence calculating the inverse and caching it for 
  ## Subsequent usage.
  data <- x$get()
  s <- solve(data, ...)
  x$setsolve(s)
  
  ## Return a matrix that is the inverse of 'x'
  s
}