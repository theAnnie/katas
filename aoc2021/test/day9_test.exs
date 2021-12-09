defmodule Day9Test do
  use ExUnit.Case

  test "1" do
    # given
    x = """
    2199943210
    3987894921
    9856789892
    8767896789
    9899965678
    """

    # when
    result = Day9.calc(x)

    # then
    assert result == 15
  end
end
