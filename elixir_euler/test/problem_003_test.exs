defmodule Problem003Test do
  use ExUnit.Case
  doctest ElixirEuler

  test "prime factors for 600851475143" do
    assert Problem003.factors_for(600851475143) == [71, 839, 1471, 6857]
  end
end

 