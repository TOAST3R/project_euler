# Problem 5: smallest multiple
# https://projecteuler.net/problem=6

defmodule Divisibility do
  def smallest_multiple(x) do
    recursive_lcm(x, x-1)
      |> round
  end

  def recursive_lcm(x, 1), do: x
  def recursive_lcm(x, y) do
    recursive_lcm(lcm(x, y), y - 1)
  end

  def lcm(a, b) do
    a*b / gcd(a,b)
      |> round
  end

  def gcd(x, 0), do: x
  def gcd(x, y), do: gcd(y, rem(x, y))
end

# Result:
# > Divisibility.smallest_multiple(20)
# 232792560
