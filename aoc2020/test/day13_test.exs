defmodule Day13Test do
    use ExUnit.Case

    test "test 1" do
        # given
        input = """
        939
        7,13,x,x,59,x,31,19
        """

        # when
        result = Day13.calc(input)
        
        # then
        assert result == 295
    end

    test "test 2" do
        # given
        input = """
        1005526
        37,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,41,x,x,x,x,x,x,x,x,x,587,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,13,19,x,x,x,23,x,x,x,x,x,29,x,733,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,17
        """

        # when
        result = Day13.calc(input)
        
        # then
        assert result == 2935
    end
end