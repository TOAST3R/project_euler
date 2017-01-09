defmodule Problem007Test do
  use ExUnit.Case
  doctest ElixirEuler

  test "10001st prime" do
    assert Problem007.prime(10001) == 104743
  end
end
