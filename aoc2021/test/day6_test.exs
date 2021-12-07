defmodule Day6Test do
  use ExUnit.Case

  test "1 and 2" do
    # given
    x = "3,4,3,1,2"

    # when
    result = Day6.calc(x, 256)

    # then
    assert result == 26984457539
  end
end
