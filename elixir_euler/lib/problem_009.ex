# TODO: FIX THIS ONE

# Problem 9: Special Pythagorean triplet
# https://projecteuler.net/problem=9

defmodule Problem009 do
  def pitagorean_triplet_product do
    pitagorean_triplet
    |> Enum.reduce(fn(x, acc) -> x * acc end)
  end
  def pitagorean_triplet do
    candidates = 1..32 
    |> Enum.map(&(&1*&1)) 
    comb(3, candidates) 
    |> Enum.filter(&(Enum.sum(&1)==1000))
  end

  defp comb(0, _), do: [[]]
  defp comb(_, []), do: []
  defp comb(m, [h|t]) do
    (for l <- comb(m-1, t), do: [h|l]) ++ comb(m, t)
  end
end
