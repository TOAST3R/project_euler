# Problem 5: smallest multiple
# https://projecteuler.net/problem=5

smallest_multiple <- function(n){
    result <- 1
    for(i in 2:n){
        result <- lcm(result, i)
    }
    result
}
lcm <- function(x, y){
    x * y / gcd(x, y)
}
gcd <- function(x, y){
  r <- x%%y
  return(ifelse(r, gcd(y, x%%y), y))
}

# Result:
# > smallest_multiple(20)
