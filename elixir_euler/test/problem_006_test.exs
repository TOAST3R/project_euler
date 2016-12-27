defmodule Problem006Test do
  use ExUnit.Case
  doctest ElixirEuler

  test "smallest multiple" do
    assert Problem006.sum_square_difference(100) == 25164150
  end
end
