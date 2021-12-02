defmodule Day2Test do
  use ExUnit.Case

  test "1" do
    # given
    x = """
    forward 5
    down 5
    forward 8
    up 3
    down 8
    forward 2
    """

    # when
    result = Day2.calc(x)

    # then
    assert result == 150
  end

  test "2" do
    # given
    x = """
    forward 5
    down 5
    forward 8
    up 3
    down 8
    forward 2
    """

    # when
    result = Day2.calc2(x)

    # then
    assert result == 900
  end
end
