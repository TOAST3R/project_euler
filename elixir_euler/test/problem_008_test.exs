defmodule Problem008Test do
  use ExUnit.Case
  doctest ElixirEuler

  test "smallest multiple" do
    assert Problem008.largest_product == 23514624000
  end
end
