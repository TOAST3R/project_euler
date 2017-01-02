# Problem 16: Power digit sum
# https://projecteuler.net/problem=16

defmodule Problem016 do

  def power_digit_sum(a, n) do
    :math.pow(a, n)
      |> round
      |> Integer.digits
      |> Enum.sum
  end
end
