defmodule Problem001Test do
  use ExUnit.Case
  doctest ElixirEuler

  test "sum of multiples" do
    assert Problem001.sum_of_multiples(3, 5, 999) == 233168
  end
end
