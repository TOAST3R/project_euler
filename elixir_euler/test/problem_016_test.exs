defmodule Problem016Test do
  use ExUnit.Case
  doctest ElixirEuler

  test "smallest multiple" do
    assert Problem016.power_digit_sum == 1366
  end
end
