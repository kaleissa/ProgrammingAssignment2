
## programing assignment 2 -

## makeCacheMatrix()
makeCacheMatrix <- function(data= NA, nrow=1, ncol=1, byrow=FALSE, dimnames=NULL){
  
        x<-matrix(data, nrow, ncol, byrow, dimnames)      ## 1 creates & stores a matrix from variables.
        x<<-x                                              ## also, stores matrix for future use                                  
        cachedinverse<-solve(x)                              ## 2 calculates the inverse matrix.                                     
        cachedinverse<<-cachedinverse                         ## 3 stores the result for future refrence.
        print ("the inverse of the provided matrix is:")       ## 4 prints result to console 
        cachedinverse                                    
  
}

##cacheSolve: 
cacheSolve <- function(data= NA, nrow=1, ncol=1, byrow=FALSE, dimnames=NULL){ 

  y<-matrix(data, nrow, ncol, byrow, dimnames)           ## 1 creates matrix from provided variables
  if (!identical(x,y)) {                                ## 2 compares matrix to stored matrix
    print("matrix x is not identical to matrix y")}      ##   also, prints messages                                        
  else {
    print("matrix are identical... getting cached data") ## 3  prints messages
    print (cachedinverse)}                                ##    prints stored inverse
}                    

