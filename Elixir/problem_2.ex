# Problem 2: Even Fibonacci numbers
# https://projecteuler.net/problem=2

defmodule Fibonacci do
  def of(1), do: 1
  def of(2), do: 2
  def of(n), do: of(n-1) + of(n-2)
  def even_sum(n) do
    Enum.filter(of(1)..of(n), &(rem(&1, 2) == 0))
      |> Enum.sum
  end
end

# Result:
# > Fibonacci.even_sum(5)
# [1] 20
