defmodule Problem025Test do
  use ExUnit.Case
  doctest ElixirEuler

  test "1000-digit Fibonacci number" do
    assert  Problem025.first_fibonacci_digits(1_000) == 4782
  end
end
