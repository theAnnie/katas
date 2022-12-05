defmodule Day4Test do
  use ExUnit.Case

  test "part 1" do
    given = """
    2-4,6-8
    2-3,4-5
    5-7,7-9
    2-8,3-7
    6-6,4-6
    2-6,4-8
    """

    result = Day4.calc(given)

    assert result == 2
  end

  test "part 1 input" do
    given = File.read!("input/4.txt")

    result = Day4.calc(given)

    assert result == 413
  end

  test "part 2" do
    given = """
    2-4,6-8
    2-3,4-5
    5-7,7-9
    2-8,3-7
    6-6,4-6
    2-6,4-8
    """

    result = Day4.calc2(given)

    assert result == 4
  end

  test "part 2 input" do
    given = File.read!("input/4.txt")

    result = Day4.calc2(given)

    assert result == 806
  end
end
