# Problem 3: Largest prime factor

# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

large_prime_factor <- function(n){
    large_prime <- 1
    k <- n
    i <- 2
    while(i<round(sqrt(n)))
        if(k %% i == 0){
            k <- k/i
            large_prime <- i
        }
        else
            i <- i+1
        large_prime
    large_prime
}

# Result:
# > large_prime_factor(600851475143)
