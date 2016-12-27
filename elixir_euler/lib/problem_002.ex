# Problem 2: Even Fibonacci numbers
# https://projecteuler.net/problem=2

defmodule Problem002 do
  def fibonacci(1), do: 1
  def fibonacci(2), do: 2
  def fibonacci(n), do: fibonacci(n-1) + fibonacci(n-2)
  def even_sum(n) do
    Enum.filter(fibonacci(1)..fibonacci(n), &(rem(&1, 2) == 0))
      |> Enum.sum
  end
end


# @cache = [0,1]

# def fibonacci(n)
#   return @cache[n] if @cache[n]
#   @cache[n] = fibonacci(n - 1) + fibonacci(n - 2)
# end