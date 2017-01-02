defmodule Problem016Test do
  use ExUnit.Case
  doctest ElixirEuler

  test "Power digit sum" do
    assert Problem016.power_digit_sum(2, 1000) == 1366
  end
end
