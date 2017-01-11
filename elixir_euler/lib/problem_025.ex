# Problem 25: 1000-digit Fibonacci number
# https://projecteuler.net/problem=25

defmodule Problem025 do
  def first_fibonacci_digits(n) do
    {finite_fib, index} = fibonacci |> Enum.flat_map_reduce(0, fn i, acc ->
      if (Integer.digits(i) |> Enum.count) <= n, do: {[i], acc + 1}, else: {:halt, acc}
    end)
    index - 3
  end
  def fibonacci do
    Stream.unfold({1, 2}, fn {a, b} ->  
      {a, {b, a + b}}
    end)
  end
end
