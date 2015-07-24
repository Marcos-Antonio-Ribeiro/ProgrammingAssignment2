## Put comments here that give an overall description of what your
## functions do
    ## If the inverse of x (matrix) has already been computed then
    ## cacheSolve function returns it from the cache, otherwise it calls 
    ## makeCacheMatrix function to do it

## Write a short comment describing this function
    ## Strores x and its inverse in the cache
makeCacheMatrix <- function(x = matrix()) {
  m<<-x
  inverse.m<<-solve(x)
}

## Write a short comment describing this function
    ## Check if the inverse of x (matrix) is already cached, if so, then returns it,
    ## otherwise it calls makeCacheMatrix
cacheSolve <- function(x, ...) {
  if (!exists("m")) m<-c(0,0)
  if(m.equals(x,m)) {
    inverse.m
  } else {
    makeCacheMatrix(x)
  }
}

    ## Returns TRUE if matrix a and b are identicals
m.equals <- function(a, b) {
  is.matrix(a)&& is.matrix(b) && dim(a) == dim(b)&& all(a == b)
}
