## This function creates a special "matrix"  that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {

        inv <- NULL
##   Set the matrix
        set <- function(y) {
# use `<<-` to assign a value to an object in an environment 
# different from the current environment. 
                x <<- y
                inv <<- NULL
        }
##  Get the matrix		
        get <- function() x
		
		
## Set the inverse		
        setInverse <- function(inverse) inv <<- inverse

## Get the inverse		
        getInverse <- function() inv
  
##  This list is used as the input to cacheSolve()  
	   list(set = set,
             get = get,
             setInverse = setInverse,
             getInverse = getInverse)


}


## This function computes the inverse.  If the inverse has already been calculated  then it should retrieve the inverse from the cache. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		
		
        inv <- x$getInverse()
		
 # If the inverse has already been calculated		
        
		if (!is.null(inv)) {
# get it from the cache and skips the computation. 		
                message("getting cached data")
                return(inv)
        }
 # otherwise, calculates the inverse 		
        mat <- x$get()
        inv <- solve(mat, ...)
        x$setInverse(inv)
        inv
}
