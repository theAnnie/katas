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

    defp do_calc(_, current, 30000000), do: current
    defp do_calc(numbers, current, counter) do
        if Map.has_key?(numbers, current) do
            do_calc(Map.put(numbers, current, counter), counter - Map.get(numbers, current), counter + 1)
        else
            do_calc(Map.put(numbers, current, counter), 0, counter + 1)
        end
    end
end