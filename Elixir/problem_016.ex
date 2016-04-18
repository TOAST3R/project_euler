# Problem 16: Power digit sum
# https://projecteuler.net/problem=16

defmodule Problem016 do

  def power_digit_sum do
    :math.pow(2,1000)
      |> round
      |> Integer.digits
      |> Enum.sum
  end
end

# Result:
# > c "problem_016.ex"
# > Problem016.power_digit_sum
