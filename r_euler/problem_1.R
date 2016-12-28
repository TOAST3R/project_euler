# Problem 1: Multiples of 3 and 5
# https://projecteuler.net/problem=1

sum_of_multiples <- function(x, y, limit){
    multiples <- c()
    for(i in 1:limit)
        if ((i %% x == 0) || (i %% y == 0))
            multiples <- c(multiples, i)
    sum(multiples)
}

# Solution:
# > sum_of_multiples(3, 5, 999)
