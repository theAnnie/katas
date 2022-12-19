defmodule Day8Test do
  use ExUnit.Case

  test "part 1" do
    given = """
    30373
    25512
    65332
    33549
    35390
    """

    result = Day8.calc(given)

    assert result == 21
  end

  test "part 1 input" do
    given = File.read!("input/8.txt")

    result = Day8.calc(given)

    assert result == 1690
  end
end
