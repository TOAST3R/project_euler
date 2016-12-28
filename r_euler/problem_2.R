# Problem 2: Even Fibonacci numbers
# https://projecteuler.net/problem=2

sum_even_fibonacci <- function(n){
    result <- integer(n)
    result[1] <- 1
    result[2] <- 2
    i <- 3
    while(result[i-1]<n)
        result[i] <- result[i-1] + result[i-2]
        i <- i+1
    sum(result[result %% 2 == 0])
}

# Result:
# > sum_even_fibonacci(4000000)
# Does not end: I have to refactor it
