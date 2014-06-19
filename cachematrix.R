## this function set a matrix in a variable, get it, and set its inverse

## makeCacheMatrix can set a value of  a matrix  e then set its 
##inverse(this value is assigned by the function cacheSolve
## 
makeCacheMatrix <- function(x = matrix()) {
        m<-NULL
        set<-function(y){
                x<<-y
                res<<-NULL
                
        }
       get<-function() x
       setinverse<-function(inverse) res<<-inverse
       getinverse<-function() res
       list(get = get,set = set,
            getinverse = getinverse,
            setinverse = setinverse)
        
}


## this function gets a matrix inverse using function  getinverse of 
##the fuction above, if its not null, return the result, 
##otherwise, uses the function solve and return a result.

cacheSolve <- function(x, ...) {
        
        res<-x$getinverse()
        if(!is.null(res)){
                message("returning data...")
               return(res)

        }
        
        else{
                
                data<-x$get()
                res<-solve(x,...)
                x$setinverse(res)
                res
                
                
        }
}
       
