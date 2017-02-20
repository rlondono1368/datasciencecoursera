
Results 

>source("InverseCacheMatrix.R")
> my_matrix <- makeCacheMatrix(matrix(c(1,3,-2,0),2, 2))
>  my_matrix$get()
     [,1] [,2]
[1,]    1   -2
[2,]    3    0
> my_matrix$getInverse()
NULL
>  cacheSolve(my_matrix)
     [,1]      [,2]
[1,]  0.0 0.3333333
[2,] -0.5 0.1666667
> cacheSolve(my_matrix)
getting cached data
     [,1]      [,2]
[1,]  0.0 0.3333333
[2,] -0.5 0.1666667
>  my_matrix$getInverse()
     [,1]      [,2]
[1,]  0.0 0.3333333
[2,] -0.5 0.1666667
