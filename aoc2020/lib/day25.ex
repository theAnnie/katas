defmodule Day25 do
    @divide_no 20201227

    def calc(door_key, card_key) do
        door_key
        |> loop_size(1, 0) 
        |> do_calc(1, card_key)
    end

    defp loop_size(wanted, current, loop) do
        case current do
            ^wanted -> loop
            _ -> loop_size(wanted, rem(current * 7, @divide_no),loop + 1)
        end
    end

    defp do_calc(0, result, _), do: result
    defp do_calc(loop, current, subject_no),
        do: do_calc(loop - 1, rem(current * subject_no, @divide_no), subject_no)
end