# Problem 3: Largest prime factor
# https://projecteuler.net/problem=3

defmodule Problem003 do
  def largest_factor_for(number) do
    factors_for(number)
    |> Enum.max
  end
  def factors_for(number) do
    factorize(number, 2, [])
  end

  defp factorize(number, factor, prime_factors) when number < factor do
    prime_factors
  end

  defp factorize(number, factor, prime_factors) when rem(number, factor) == 0 do
    [factor|factorize(div(number, factor), factor, prime_factors)]
  end

  defp factorize(number, factor, prime_factors) do
    factorize(number, factor + 1, prime_factors)
  end
end
