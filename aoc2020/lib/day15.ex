defmodule Day15 do

    def calc(list) do
        list
        |> prepare_input
        |> do_calc(0, Enum.count(list) + 1)
    end

    defp prepare_input(list) do
        list
        |> Stream.with_index()
        |> Stream.map(fn {x,i} -> %{x => i + 1} end) 
        |> Enum.reduce(fn x, acc -> Map.merge(acc, x) end)
    end

    defp do_calc(_, current, 2020), do: current
    defp do_calc(numbers, current, counter) do
        if Enum.member?(Map.keys(numbers), current) do
            c = Map.get(numbers, current)
            numbers = Map.put(numbers, current, counter)
            do_calc(numbers, counter - c, counter + 1)           
        else
            numbers = Map.put(numbers, current, counter)
            do_calc(numbers, 0, counter + 1)
        end
    end
end