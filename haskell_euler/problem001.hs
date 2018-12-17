-- Problem 1: Find the sum of all the multiples of 3 or 5 below 1000.
-- https://projecteuler.net/problem=1

-- Using list comprehensions

sumOfMultiples :: Integral a => a -> a
sumOfMultiples (limit) = sum [ x | x <- [1..limit], x `mod` 3 == 0 || x `mod` 2 == 0 ]

sumOfMultiples 1000
-- 334167
