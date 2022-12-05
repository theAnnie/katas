defmodule Day3Test do
  use ExUnit.Case

  test "part 1" do
    given = """
    vJrwpWtwJgWrhcsFMMfFFhFp
    jqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL
    PmmdzqPrVvPwwTWBwg
    wMqvLMZHhHMvwLHjbvcjnnSBnvTQFn
    ttgJtRGJQctTZtZT
    CrZsJsPPZsGzwwsLwLmpwMDw
    """

    result = Day3.calc(given)

    assert result == 157
  end

  test "part 1 input" do
    given = File.read!("input/3_1.txt")

    result = Day3.calc(given)

    assert result == 7568
  end

  test "part 2" do
    given = """
    vJrwpWtwJgWrhcsFMMfFFhFp
    jqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL
    PmmdzqPrVvPwwTWBwg
    wMqvLMZHhHMvwLHjbvcjnnSBnvTQFn
    ttgJtRGJQctTZtZT
    CrZsJsPPZsGzwwsLwLmpwMDw
    """

    result = Day3.calc2(given)

    assert result == 70
  end

  test "part 2 input" do
    given = File.read!("input/3_1.txt")

    result = Day3.calc2(given)

    assert result == 2780
  end
end
