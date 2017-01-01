defmodule Problem009Test do
  use ExUnit.Case
  doctest ElixirEuler

  test "Special Pythagorean triplet" do
    assert Problem009.find_pitagorean_triplet == [[36, 64, 900], [100, 324, 576]]
  end
end
