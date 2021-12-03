defmodule Day3Test do
  use ExUnit.Case

  test "1" do
    # given
    x = """
    00100
    11110
    10110
    10111
    10101
    01111
    00111
    11100
    10000
    11001
    00010
    01010
    """

    # when
    result = Day3.calc(x)

    # then
    assert result == 198
  end

  test "2" do
    # given
    x = """
    00100
    11110
    10110
    10111
    10101
    01111
    00111
    11100
    10000
    11001
    00010
    01010
    """

    # when
    result = Day3.calc2(x)

    # then
    assert result == 230
  end
end
