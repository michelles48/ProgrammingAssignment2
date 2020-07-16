## Put comments here that give an overall description of what your
## functions do
Operation of functions that collects the inverse of a matrix
## Write a short comment describing this function
The function produces a matrix article that can store its inverse
makeCacheMatrix <- function(x = matrix()) {
  inv<-NULL
  set<-function(y){
    x<<-y
    inv<<-NULL
  }
  get <-function()  {x}
  setInverse<-function(inverse) {inv<<-inverse}
  getInverse<-function() {inv}
  list(set = set, get = get, setInverse=setInverse,getInverse=getInverse)
}
## Write a short comment describing this function
The function assesses the inverse of the matrix remitted by makecashematrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv<- x$getInverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  mat <- x$get()
  inv<- solve(mat,...)
  x$setInverse(inv)
  inv
