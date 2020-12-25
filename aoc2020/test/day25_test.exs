defmodule Day25Test do
    use ExUnit.Case

    test "test 1" do
        # given
        card_key = 5764801
        door_key = 17807724

        # when
        result = Day25.calc(card_key, door_key)

        # then
        assert result == 14897079
    end

    test "test 2" do
        # given
        card_key = 14788856
        door_key = 19316454

        # when
        result = Day25.calc(card_key, door_key)

        # then
        assert result == 545789
    end
end