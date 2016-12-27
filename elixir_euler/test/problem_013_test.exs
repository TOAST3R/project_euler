defmodule Problem013Test do
  use ExUnit.Case
  doctest ElixirEuler

  test "smallest multiple" do
    assert Problem013.ten_digits_large_sum == "5537376230"
  end
end
