defmodule Day5Test do
  use ExUnit.Case

  test "part 1" do
    given_stacks = %{
      1 => ["Z", "N"],
      2 => ["M", "C", "D"],
      3 => ["P"]
    }

    given_instructions = """
    move 1 from 2 to 1
    move 3 from 1 to 3
    move 2 from 2 to 1
    move 1 from 1 to 2
    """

    result = Day5.calc(given_stacks, given_instructions)

    assert result == "CMZ"
  end

  test "part 1 input" do
    given_stacks = %{
      1 => ["F", "H", "B", "V", "R", "Q", "D", "P"],
      2 => ["L", "D", "Z", "Q", "W", "V"],
      3 => ["H", "L", "Z", "Q", "G", "R", "P", "C"],
      4 => ["R", "D", "H", "F", "J", "V", "B"],
      5 => ["Z", "W", "L", "C"],
      6 => ["J", "R", "P", "N", "T", "G", "V", "M"],
      7 => ["J", "R", "L", "V", "M", "B", "S"],
      8 => ["D", "P", "J"],
      9 => ["D", "C", "N", "W", "V"]
    }

    given_instructions = File.read!("input/5.txt")


    result = Day5.calc(given_stacks, given_instructions)

    assert result == "JDTMRWCQJ"
  end
end
