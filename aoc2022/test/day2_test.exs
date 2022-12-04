defmodule Day2Test do
  use ExUnit.Case

  test "part 1" do
    given = """
    A Y
    B X
    C Z
    """

    result = Day2.calc(given)

    assert result == 15
  end

  test "part 1 input" do
    given = File.read!("input/2_1.txt")

    result = Day2.calc(given)

    assert result == 13565
  end
end
