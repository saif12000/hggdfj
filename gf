
Skip to content
 
Search…
All gists
Back to GitHub
@saif12000 
@DouglasRubin DouglasRubin/Week 3 programming assignment_b.r
Created 2 years ago • Report abuse
0
1
 Code Revisions 1 Forks 1
<script src="https://gist.github.com/DouglasRubin/18d43a293a136ef8b15dbdf19ede386d.js"></script>
  
Peer-graded Assignment: Programming Assignment 2: Lexical Scoping -- for Douglas Rubin, BMS
 Week 3 programming assignment_b.r
setwd('C:/Users/rubind1/Documents/Coursera-R')
##
## I simply set the input x as a matrix
## and then set the solved value "s" as a null
## then I changed every reference to "mean" to "solve"
makeCacheMatrix <- function(x = matrix(sample(1:100,9),3,3)) {
  s <- NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) s <<- solve
  getsolve <- function() s
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}
##
## Same here, changed "mean" to "solve" and "m" to "s"
cacheSolve <- function(x, ...) {
  s <- x$getsolve()
  if(!is.null(s)) {
    message("getting inversed matrix")
    return(s)
  }
  data <- x$get()
  s <- solve(data, ...)
  x$setsolve(s)
  s
}
@saif12000
 
Leave a comment
Attach files to your comment
Attach files by dragging & dropping, selecting or pasting them.
© 2020 GitHub, Inc.
Terms
Privacy
Security
Status
Help
Contact GitHub
Pricing
API
Training
Blog
About
