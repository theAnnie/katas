defmodule Day10Test do
  use ExUnit.Case

  test "test 1" do
    # given
    input = """
    16
    10
    15
    5
    1
    11
    7
    19
    6
    12
    4
    """

    # when
    result = Day10.calc(input)

    # then
    assert result == 7 * 5
  end

  test "test 2" do
    # given
    input = """
    28
    33
    18
    42
    31
    14
    46
    20
    48
    47
    24
    23
    49
    45
    19
    38
    39
    11
    1
    32
    25
    35
    8
    17
    7
    9
    4
    2
    34
    10
    3
    """

    # when
    result = Day10.calc(input)

    # then
    assert result == 22 * 10
  end
end
