defmodule Day6Test do
  use ExUnit.Case

  test "part 1" do
    given = "bvwbjplbgvbhsrlpgdmjqwftvncz"

    result = Day6.calc(given)

    assert result == 5
  end

  test "part 1 input" do
    given = File.read!("input/6.txt")

    result = Day6.calc(given)

    assert result == 1896
  end

  test "part 2" do
    given = "mjqjpqmgbljsphdztnvjfqwrcgsmlb"

    result = Day6.calc2(given)

    assert result == 19
  end

  test "part 2 input" do
    given = File.read!("input/6.txt")

    result = Day6.calc2(given)

    assert result == 3452
  end
end
