defmodule Day5 do

    def highest_id(input) do
        input
        |> String.split("\n", trim: true)
        |> Stream.map(&get_seat_info/1)
        |> Enum.max()
    end
    
    defp get_seat_info(input) do
        x = seat_row(input)
        y = seat_column(input)
        seat_id(x, y)
    end

    defp seat_row(input) do
        input = String.slice(input, 0..6)
        bin(0, 128, input)
    end

    defp seat_column(input) do
        input = String.slice(input, 7..9)
        bin(0, 8, input)
    end

    defp seat_id(seat_row, seat_column), do: (8 * seat_row) + seat_column

    defp bin(min, _max, "F" <> ""),  do: min
    defp bin(_min, max, "B" <> ""),  do: max - 1
    defp bin(min, max, "F" <> code), do: bin(min, max - ((max - min) / 2), code)
    defp bin(min, max, "B" <> code), do: bin(min + (max - min) / 2, max, code)

    defp bin(min, _max, "L" <> ""),  do: min
    defp bin(_min, max, "R" <> ""),  do: max - 1
    defp bin(min, max, "L" <> code), do: bin(min, max - ((max - min) / 2), code)
    defp bin(min, max, "R" <> code), do: bin(min + (max - min) / 2, max, code)

    # part 2
    def my_seat(input) do
        input = input
        |> String.split("\n", trim: true)
        |> Stream.map(&get_seat_info/1)
        |> Enum.sort()
        |> Enum.reduce_while(0, fn x, acc ->
               if x - 2 != acc, do: {:cont, x}, else: {:halt, x - 1}
        end)
    end
end