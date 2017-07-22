## The compution involved in matrix inverse is often costly
## The following program improves upon this cost by creating a cache of the matrix inverse 
## which can be checked before any further computation

## The makeCacheMatrix is a basic function that is responsible for creating a matrix
## This can set the matrix, get the matrix and it can also set or get the inverse of this matrix

makeCacheMatrix <- function(x = matrix()) {
  inverse<- NULL ## initializing the inverse to null 
  set <- function(new){
   x <<- new   ## Setting the matrix to the new input given byt he user 
   inverse<<- NULL  ## reinitializing the inverse to NULL
  }
  get <- function(){
    x    ## return x
  }
  set_inverse <- function(new_inverse){
    inverse <<- new_inverse  ## set inverse as the value input from users 
  }
  get_inverse <- function(){
    inverse  ## return inverse matrix
  }
  list(set=set, get=get, set_inverse=set_inverse, get_inverse=get_inverse)

}


## The following function is responsible for computing the inverse of the mtrix
## It first checks if the inverse of the matrix has already been computed 
## if it has already been computed, then the program simply returns this computed value 
## otherwise it take the matrix and computes the inverse and then returns this value

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse <- x$get_inverse()  ## first checking if the matrix entered has inverse
  if(!is.null(inverse)) {     ## if it has an inverse, return the inverse and let the user know that it is retrieved from cache 
    print("getting cached data.")
    return(inverse)
  }
  else{                       ## else get the matrix, compute its inverse and return it
    data <- x$get()
    inverse <- solve(data)
    x$set_inverse(inverse)
  }
 
  inverse
}
