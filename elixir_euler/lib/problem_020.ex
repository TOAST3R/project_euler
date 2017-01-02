# Problem 20: Factorial digit sum
# https://projecteuler.net/problem=20

defmodule Problem020 do
  def factorial_digits_sum(n) do
    factorial(n)
    |> Integer.digits
    |> Enum.sum
  end
  defp factorial(1), do: 1
  defp factorial(n) when is_integer(n) do
    n * factorial(n-1)
  end
end
