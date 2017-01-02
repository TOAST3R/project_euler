defmodule Problem003Test do
  use ExUnit.Case
  doctest ElixirEuler

  test "prime factors of a given number" do
    assert Problem003.factors_for(600851475143) == [71, 839, 1471, 6857]
  end

  test "largest prime factor" do
    assert Problem003.largest_factor_for(600851475143) == 6857
  end
end
