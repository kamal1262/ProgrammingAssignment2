## Md. Kamal Hossain
## M.Eng.Sc student
## Multimedia University, Malaysia
##email: md.kamal.hossain@hotmail.com

##Assignment 2, coursera-online course on R Programming
##source: https://class.coursera.org/rprog-015/human_grading/view/courses/973496/assessments/3/submissions 


## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# makeCacheMatrix creates a list containing a function to
# 1. set the value of the matrix
# 2. get the value of the matrix
# 3. set the value of inverse of the matrix
# 4. get the value of inverse of the matrix
makeCacheMatrix <- function(x = matrix()) {
    invMatric<-NULL
    set <- function(y) {
        x <<- y
        invMatrix <<- NULL
    }
    get <- function() x
    setinvMatrix <- function(inverse) invMatrix <<- inverse
    getinvMatrix <- function() invMatrix
    list(set=set, get=get, setinvMatrix=setinvMatrix, getinvMatrix=getinvMatrix)
}


## Write a short comment describing this function
cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    inv <- x$getinvMatrix()
    if(!is.null(inv)) {
        message("getting cached Matrix.")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data)
    x$setinvMatrix(inv)
    inv
}
