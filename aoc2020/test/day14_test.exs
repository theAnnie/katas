defmodule Day14Test do
    use ExUnit.Case

    test "test 1" do
        # given
        input = """
        mask = XXXXXXXXXXXXXXXXXXXXXXXXXXXXX1XXXX0X
        mem[8] = 11
        mem[7] = 101
        mem[8] = 0
        mask = XXXXXXXXXXXXXXXXXXXXXXXXXXXXX1XXXX0X
        mem[8] = 11
        mem[7] = 101
        mem[8] = 0
        """

        # when
        result = Day14.calc(input)
        
        # then
        assert result == 165
    end
end