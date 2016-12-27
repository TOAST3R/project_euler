defmodule Problem005Test do
  use ExUnit.Case
  doctest ElixirEuler

  test "smallest multiple" do
    assert Problem005.smallest_multiple(20) == 232792560
  end
end
