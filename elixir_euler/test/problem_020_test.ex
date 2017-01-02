defmodule Problem020Test do
  use ExUnit.Case
  doctest ElixirEuler

  test "Factorial digit sum" do
    assert  Problem020.factorial_digits_sum(100) == 648
  end
end
