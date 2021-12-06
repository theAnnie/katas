defmodule Day5Test do
  use ExUnit.Case

  test "1" do
    # given
    x = """
    0,9 -> 5,9
    8,0 -> 0,8
    9,4 -> 3,4
    2,2 -> 2,1
    7,0 -> 7,4
    6,4 -> 2,0
    0,9 -> 2,9
    3,4 -> 1,4
    0,0 -> 8,8
    5,5 -> 8,2
    """

    # when
    result = Day5.calc(x)

    # then

    assert result == 5
  end

  test "2" do
    # given
    x = """
    0,9 -> 5,9
    8,0 -> 0,8
    9,4 -> 3,4
    2,2 -> 2,1
    7,0 -> 7,4
    6,4 -> 2,0
    0,9 -> 2,9
    3,4 -> 1,4
    0,0 -> 8,8
    5,5 -> 8,2
    """

    # when
    result = Day5.calc2(x)

    # then

    assert result == 12
  end
end
