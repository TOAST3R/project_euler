# Problem 1: Multiples of 3 and 5
# https://projecteuler.net/problem=1

defmodule Problem1 do
  def sum_of_multiples(x, y, limit) do
    Enum.filter(1..limit, &(rem(&1, x) == 0) || (rem(&1, y) == 0))
      |> Enum.sum
  end
end

# Result:
# > c "problem_1.ex"
# Problem1.sum_of_multiples(3, 5, 1000)
