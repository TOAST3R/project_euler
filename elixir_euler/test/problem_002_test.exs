defmodule Problem002Test do
  use ExUnit.Case
  doctest ElixirEuler

  test "sum of even fibonacci numbers smaller than 4000000" do
    assert Problem002.even_sum(4000000) == 4613732
  end
end

 