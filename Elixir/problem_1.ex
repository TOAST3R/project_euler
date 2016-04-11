# Problem 1: Multiples of 3 and 5

# If we list all the natural numbers below 10 that are multiples of 3 or 5, we
# get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

# Solution generalized to the sum of all the multiples of x or y below limit.

sum_of_multiples = fn x, y, limit ->
  multiples = Enum.filter 1..limit, &(rem(&1, x) == 0) || (rem(&1, y) == 0)
  Enum.sum(multiples)
end

# Result:
# > IO.puts sum_of_multiples.(3, 5, 1000)
# [1] 234168
