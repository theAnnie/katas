defmodule Day22Test do
    use ExUnit.Case

    test "test 1" do
        # given 
        input = """
        Player 1:
        9
        2
        6
        3
        1

        Player 2:
        5
        8
        4
        7
        10
        """

        # when
        result = Day22.calc(input)

        # then
        assert result == 306
    end

    test "test 2" do
        # given 
        input = """
        Player 1:
        48
        23
        9
        34
        37
        36
        40
        26
        49
        7
        12
        20
        6
        45
        14
        42
        18
        31
        39
        47
        44
        15
        43
        10
        35

        Player 2:
        13
        19
        21
        32
        27
        16
        11
        29
        41
        46
        33
        1
        30
        22
        38
        5
        17
        4
        50
        2
        3
        28
        8
        25
        24
        """

        # when
        result = Day22.calc(input)

        # then
        assert result == 30197
    end
end