defmodule Day1Test do
    use ExUnit.Case

    test "test 1" do
        # given
        input = [1721, 979, 366, 299, 675, 1456]

        # when
        result = Day1.calc(input)

        # then
        assert result == [514579]
    end

    test "test 2" do
        # given
        input = []

        # when
        result = Day1.calc(input)

        # then
        assert result == []
    end

    test "test 3" do
        # given
        input = [1, 2, 3, 1000, 2021, -1, 2019, 2018, 2017]

        # when
        result = Day1.calc(input)

        # then
        assert result == [2019, 4036, 6051, -2021]
    end
end