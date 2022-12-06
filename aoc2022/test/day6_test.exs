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
end
