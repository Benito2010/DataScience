## Caching the inverse of a matrix 
## This functions create a matrix and cahes its inverse. 

 
## creates a matrix that cache its inverse 
 
makeCacheMatrix <- function(x = matrix()) { 
  m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get<-function() x
  setmatrix<-function(solve) m<<- solve
  getmatrix<-function() m
  list(set=set, get=get,
       setmatrix=setmatrix,
       getmatrix=getmatrix)
}

 
 
 
## process the inverse of a matrix if hasn't been inverted
 
cacheSolve <- function(x, ...) { 
         ## Return a matrix that is the inverse of 'x' 
  m<-x$getmatrix()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  matrix<-x$get()
  m<-solve(matrix, ...)
  x$setmatrix(m)
  m
  
} 
