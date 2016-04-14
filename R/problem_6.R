# Problem 6: Sum square difference
# https://projecteuler.net/problem=6

sum_square_difference <- function(n){
    sum_of_squares <- 0
    for(i in 1:n){
        sum_of_squares <- sum_of_squares + i^2
    }

    square_of_sum <- 0
    for(i in 1:n){
        square_of_sum <- square_of_sum + i
    }

    square_of_sum - sum_of_squares
}

# Result:
# > smallest_multiple(20)
# 232792560
