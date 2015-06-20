## The following two fucntions are for seting a matrix and computing its' inverse
## If the inverse has been already computed, the value in cache will be return

## The following fuction stores 4 functions: 
## 1. get the value of the matrix
## 2. set the value of the matrix
## 3. set the value of the inverse of the matrix
## 4. get the value of the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## the following function calculates the inverse of the special "matrix" created with the above function. 
## If the inverse has already been computed, it will return the from the coache
## If the inverse has not been computed, it will compute and return the result

cacheSolve <- function(x, ...) {
    m<-matrix()
    m <- x$getinverse()
    if(!is.null(m)) {
      message("getting cached data")
      return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setinverse(m)
    m
  }