defmodule Problem010Test do
  use ExUnit.Case
  doctest ElixirEuler

  test "Summation of primes" do
    assert Problem010.prime_sumation(2000000) == 142913828922
  end
end
