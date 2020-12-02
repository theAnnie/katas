defmodule Day2Test do
    use ExUnit.Case

    test "test 1" do
        # given
        input = [
            "1-3 a: abcde",
            "1-3 b: cdefg",
            "2-9 c: ccccccccc"
        ]

        # when
        result = Day2.how_many_pass_are_valid(input)

        # then
        assert result == 2
    end

    test "test 2" do
        # given
        input = [
            "1-3 f: abcde",
            "1-3 b: cdefg",
            "2-3 c: ccccccccc"
        ]

        # when
        result = Day2.how_many_pass_are_valid(input)

        # then
        assert result == 0
    end

    test "test 3" do
        # given
        input = [
            "1-1 x: xyyyyyz",
            "3-10 b: cdefgbbbbb",
            "2-3 c: c"
        ]

        # when
        result = Day2.how_many_pass_are_valid(input)

        # then
        assert result == 2
    end
end