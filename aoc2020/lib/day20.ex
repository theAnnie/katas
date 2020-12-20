defmodule Day20 do

    def calc(input) do
        input = input
        |> prepare_input()
        |> Enum.map(&parse/1)

        [h | t] = input
        do_calc(t, input, h, %{})
    end

    defp prepare_input(input) do
        input
        |> String.split("\n") 
        |> Stream.chunk_by(fn x -> x == "" end) 
        |> Enum.reject(fn x -> x == [""] end)
    end

    defp parse(x) do
        [id | image] = x

        x1 = image |> hd
        x2 = image |> Enum.reverse              |> hd
        x3 = image |> Enum.map(&String.first/1) |> Enum.join
        x4 = image |> Enum.map(&String.last/1)  |> Enum.join

        {parse_id(id), 
            [x1, x2, x3, x4, 
              String.reverse(x1), String.reverse(x2), 
              String.reverse(x3), String.reverse(x4)
            ] |> MapSet.new
        }
    end

    defp parse_id("Tile " <> id) do
        id
        |> String.replace(":", "")
        |> String.to_integer()
    end

    defp do_calc([], input, {id, set1}, results) do
        x = Enum.map(input, fn {id2, set2} -> 
            if id != id2 do
            {id2, MapSet.intersection(set1, set2) |> MapSet.size}
        else
            {0,0}
        end end)
        Map.put(results, id, x)
        |> Enum.map(fn {k,v} -> 
            {k, Enum.map(v, fn {x, y} -> y end) 
            } end)
        |> Enum.map(fn {k,v} -> 
            {k, Enum.count(v, fn x -> x == 2 end)} 
        end)
        |> Enum.filter(fn {k, v} -> v == 2 end)
        |> Enum.map(fn {k, _v} -> k end)
        |> Enum.reduce(fn x, acc -> x * acc end)
    end

    defp do_calc(current, input, {id, set1}, results) do
        x = Enum.map(input, fn {id2, set2} -> 
            if id != id2 do
            {id2, MapSet.intersection(set1, set2) |> MapSet.size}
            else
                {0,0}
            end end)        
        [h | t] = current
        do_calc(t, input, h, Map.put(results, id, x))
    end
end