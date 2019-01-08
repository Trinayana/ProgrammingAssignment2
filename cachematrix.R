## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}


##This is a function which will return a object named makecachematrix that includes list of functions namely
##get,set,getmatrix,setmatrix
##The get function will retrieve the value of matrix assigned
##The set function will assign the new matrix set

makecachematrix <-function(x=matrix()){ 
  m <-NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinversematrix <- function(inversematrix) m <<- inversematrix
  ## we introduce the `<<-` operator which can be used to assign a value to an object in an environment 
  ##that is different from the current environment
  getinversematrix <- function() m
  ##return the list to parent environment
  list(set = set, get = get,
       setinversematrix = setinversematrix,
       getinversematrix = getinversematrix)
}
## this function will store the data temporarily
##Cachesolve will not recaclculate for a matrix that was defined earlier as it is stored as cache
cachesolve <-function(x,...){
  ##it will calculate the inverse of a matrix given it is invertible
  m <- x$getinversematrix()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$inversesetmatrix(m)
  m
}
