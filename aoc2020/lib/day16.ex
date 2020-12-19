defmodule Day16 do

    def calc(input) do
        {x, y} = prepare_input(input)
        rules = parse_rules(x)
        nearby = parse_nearby(y)

        result(nearby, rules, [])
    end

    defp prepare_input(input) do
        [x, _, y] = input 
        |> String.split("\n") 
        |> Stream.chunk_by(fn x -> x == "" end) 
        |> Enum.reject(fn x -> x == [""] end)
        {x, y}
    end

    defp parse_rules(x) do
        x
        |> Stream.flat_map(fn y -> String.split(y, ":") end) 
        |> Stream.drop_every(2) 
        |> Stream.flat_map(fn y -> String.split(y, "or") end) 
        |> Stream.map(fn y -> String.replace(y, " ", "") end)
        |> Enum.map(&build_range/1)
    end

    defp build_range(input) do
        [x,y] = input
        |> String.split("-") 
        |> Enum.map(fn x -> String.to_integer(x) end)
        x .. y
    end

    defp parse_nearby(input) do
        [h | t] = input
        t 
        |> Stream.flat_map(fn x -> String.split(x, ",") end) 
        |> Enum.map(&String.to_integer/1)
    end

    defp result([], ranges, results), do: Enum.sum(results)
    defp result(numbers, ranges, results) do
        [h | t] = numbers

        case Enum.find(ranges, fn x -> h in x end)  do
            nil -> result(t, ranges, [h | results])
            _   -> result(t, ranges, results)
        end
    end
end