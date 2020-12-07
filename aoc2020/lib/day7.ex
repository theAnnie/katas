defmodule Day7 do

    def how_many_bags(input) do
        input 
        |> String.split("\n", trim: true) 
        |> Enum.map(fn x -> String.replace(x, ~r/bag(s)?/, "") end)
        |> Enum.map(fn x -> String.split(x, "contain") end)
        |> Enum.map(fn [a,b] -> [String.trim(a), 
            String.replace(b ,".", "") 
            |> String.trim_leading() 
            |> String.trim_trailing()
            |> String.replace(~r/[0-9]*/, "")
            ] end)
        |> Enum.map(fn [a,b] -> [a, String.split(b, ",")] end) |> Enum.map(fn [a,b] -> [a, Enum.map(b, fn x -> String.trim_trailing(x) |> String.trim_leading() end) ]end)    
        |> Enum.map(fn [a,b] -> %{a => b} end)
        |> Enum.reduce(fn x,acc -> Map.merge(acc, x) end)
        |> find_all_colours(["shiny gold"], [])
        |> Enum.uniq()
        |> Enum.count()
    end


    defp find_all_colours(input, colours, results) do
        new_results = 
        Enum.flat_map(colours, fn x -> 
            input
            |> Enum.map(fn {k,v} -> if Enum.member?(v, x), do: k  end) 
            |> Enum.filter(fn x -> x != nil end)
        end)

        if new_results == [] do
            results
        else
            input = remove_list_of_keys(new_results, input)
            colours = new_results
            results = results ++ new_results
            find_all_colours(input, colours, results)
        end
    end

    defp remove_list_of_keys(keys, map) do
        if keys == [] do
            map
        else
            [h | t] = keys
            Map.delete(map, h)
            remove_list_of_keys(t, Map.delete(map, h))
        end
    end
end