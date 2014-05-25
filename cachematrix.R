##Below are two functions that are used to create a special object 
##that stores a matrix and caches invers original matrix


#The first function,  makeCacheMatrix  creates a special "matrix", which is really a list containing a function to
#1. set the value of the matrix
#2. get the value of the matrix
#3. set the value of the invers matrix
#4. get the value of the invers matrix


makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

#The following function calculates the inverse of the special "matrix" created with the above function. 
#However, it first checks to see if the inverse (usin solve()) has already been calculated. 
#If so, it  get s the inverse from the cache and skips the computation. Otherwise, it calculates the inverse of the matrix and sets the value of the inverse matrix in the cache via the  setmean  function.
#We using standard function to invers matrix - solve()

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
}
