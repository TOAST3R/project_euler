defmodule Problem014Test do
  use ExUnit.Case
  doctest ElixirEuler

  test "Longest Collatz sequence" do
    assert Problem014.longuer_collatz == 837799
  end
end
