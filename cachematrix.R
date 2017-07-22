## The compution involved in matrix inverse is often costly
## The following program improves upon this cost by creating a cache of the matrix inverse 
## which can be checked before any further computation

## The makeCacheMatrix is a basic function that is responsible for creating a matrix
## This can set the matrix, get the matrix and it can also set or get the inverse of this matrix

makeCacheMatrix <- function(x = matrix()) {
  inverse<- NULL
  set <- function(new){
   x <<- new
   inverse<<- NULL
  }
  get <- function(){
    x
  }
  set_inverse <- function(new_inverse){
    inverse <<- new_inverse
  }
  get_inverse <- function(){
    inverse
  }

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
