defmodule Problem004Test do
  use ExUnit.Case
  doctest ElixirEuler

  test "largest palindrome integer product of two three digits integers" do
    assert Problem004.largest_palindrome == 906609
  end
end
