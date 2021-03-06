# Problem 6: Sum square difference
# https://projecteuler.net/problem=6

defmodule Problem006 do
  def sum_square_difference(n) do
    sum_of_squares = Enum.map(1..n, &(&1*&1)) |> Enum.sum
    round(:math.pow(Enum.sum(1..n),2) - sum_of_squares)
  end
end
