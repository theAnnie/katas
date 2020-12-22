defmodule Day22 do

    def calc(input) do
        [ _ | input] = String.split(input,"\n", trim: true)
        [p1, _, p2] = Enum.chunk_by(input, fn x -> x == "Player 2:" end)
        p1 = Enum.map(p1, &String.to_integer/1)
        p2 = Enum.map(p2, &String.to_integer/1)
        do_calc(p1, p2) |> result()
    end

    defp do_calc(p1, []), do: p1
    defp do_calc([], p2), do: p2

    defp do_calc(p1, p2) do
        [h1 | t1] = p1
        [h2 | t2] = p2
        if h1 > h2 do
            t1 = [h2, h1 | Enum.reverse(t1)] |> Enum.reverse
            do_calc(t1, t2)
        else
            t2 = [h1, h2 | Enum.reverse(t2)] |> Enum.reverse
            do_calc(t1, t2)
        end
    end

    defp result(list) do
        list
        |> Enum.reverse()
        |> Stream.with_index()
        |> Stream.map(fn {x,y} -> {x, y + 1} end)
        |> Stream.map(fn {x,y} -> x * y end)
        |> Enum.sum()
    end
end