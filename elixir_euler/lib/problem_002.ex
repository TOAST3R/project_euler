# Problem 2: Even Fibonacci numbers
# https://projecteuler.net/problem=2

defmodule Problem002 do
  
  def fibonacci do
    Stream.unfold({1, 2}, fn {a, b} ->  
      {a, {b, a + b}}
    end)
  end

  def even_sum(n) do
    {finite_fib, _} = fibonacci |> Enum.flat_map_reduce(0, fn i, acc ->
        if i < n, do: {[i], acc + 1}, else: {:halt, acc}
      end)
    finite_fib
      |> Enum.filter(&(rem(&1, 2) == 0))
      |> Enum.sum
  end
end
