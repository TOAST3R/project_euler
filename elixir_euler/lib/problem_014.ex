# Problem 14: Longest Collatz sequence
# https://projecteuler.net/problem=14

defmodule Problem014 do
  def longuer_collatz(n \\ 1_000_000) do
    1..n
    |> Enum.max_by(&(collatz_stream(&1)|>Enum.count))
  end
  
  def collatz_stream(start) do
    Stream.unfold start, fn
      (1)                     -> nil
      (n) when rem(n, 2) == 0 -> {n, div(n, 2)}
      (n)                     -> {n, 3 * n + 1}
    end
  end
end