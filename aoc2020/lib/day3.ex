defmodule Day3 do
   
    def number_of_trees_cut(input) do
        [_ | input] = input |> String.split("\n", trim: true) 

        height = input |> Enum.count()
        length = height * 3
        length_of_block = input |> hd |> String.length()
        n = length / length_of_block |> Float.ceil() |> trunc()

        input
        |> Stream.map(fn x -> String.duplicate(x, n) end)
        |> Enum.map(&String.graphemes/1)
        |> do_calc(0, 3)
    end

    defp do_calc([], n, _position), do: n

    defp do_calc(list, n, position) do
        [h | t] = list
        n = if Enum.at(h, position) == "#", do: n + 1, else: n
        do_calc(t, n, position + 3)
    end
end