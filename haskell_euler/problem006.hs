-- Problem 6: Find the difference between the sum of the 
-- squares of the first one hundred natural numbers and 
-- the square of the sum.
-- https://projecteuler.net/problem=6

sumSquareDifference :: (Num a, Enum a) => a -> a
sumSquareDifference n = sum([1..n])^2 - sum (map (^2) [1..n])

-- Solution:
sumSquareDifference 100
