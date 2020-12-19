defmodule Day15Test do
    use ExUnit.Case

    test "test 1" do
        # given
        input = [1,3,2]

        # when
        result = Day15.calc(input)
        
        # then
        assert result == 1
    end

    test "test 2" do
        # given
        input = [2,1,3]

        # when
        result = Day15.calc(input)
        
        # then
        assert result == 10
    end

    test "test 3" do
        # given
        input = [1,2,3]

        # when
        result = Day15.calc(input)
        
        # then
        assert result == 27
    end

    test "test 4" do
        # given
        input = [2,3,1]

        # when
        result = Day15.calc(input)
        
        # then
        assert result == 78
    end

    test "test 5" do
        # given
        input = [3,2,1]

        # when
        result = Day15.calc(input)
        
        # then
        assert result == 438
    end

    test "test 6" do
        # given
        input = [3,1,2]

        # when
        result = Day15.calc(input)
        
        # then
        assert result == 1836
    end

    test "test 7" do
        # given
        input = [0,3,1,6,7,5]

        # when
        result = Day15.calc(input)
        
        # then
        assert result == 852
    end
end