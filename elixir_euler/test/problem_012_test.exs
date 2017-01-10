defmodule Problem012Test do
  use ExUnit.Case
  doctest ElixirEuler

  test "Highly divisible triangular number" do

    assert Problem012.triangular_numbers(500) == 76576500
  end
end
