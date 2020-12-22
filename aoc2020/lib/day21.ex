defmodule Day21 do
    def calc(input) do
        input = input
        |> String.split("\n", trim: true)
        |> Enum.map(&parse_input/1)
        |> List.flatten()

        bad = do_calc(Enum.group_by(input, &elem(&1, 0), &elem(&1, 1)))
        
        input
        |> Stream.map(fn {_k,v} -> v end)
        |> Stream.dedup()
        |> Stream.flat_map(&MapSet.to_list/1)
        |> Enum.count(fn x -> x not in bad end)

        # part 2
        # bad = do_calc(Enum.group_by(input, &elem(&1, 0), &elem(&1, 1)))
        # |> Enum.group_by(&elem(&1, 1), &elem(&1, 0))
        # |> Map.values()
        # |> Enum.join(",")
    end

    defp parse_input(item) do
        [h | t] = String.split(item, " (contains ")

        alergens = String.replace(hd(t), ")", "")
        alergens = if String.contains?(alergens, ",") do
            String.split(alergens, ", ", trim: true)
        else
            [alergens]
        end

        ingredients = String.split(h, " ", trim: true)
        Enum.map(alergens, fn a -> {a, MapSet.new(ingredients)} end)
    end

    defp do_calc(input) do
       Enum.map(input, fn {k, v} -> 
        {k, Enum.reduce(v, fn x, acc -> MapSet.intersection(x, acc) end)}
       end)
       |> ingrident_with_alg(%{})
    end

    # part 2defp ingrident_with_alg([], results), do: results
    defp ingrident_with_alg([], results), do: Map.keys(results)
    defp ingrident_with_alg(input, results) do
        r = input
        |> Stream.filter(fn {_, x} -> Enum.count(x) == 1 end)
        |> Enum.map(fn {k,v} -> %{(v |> MapSet.to_list |> hd) => k} end)
        |> Enum.reduce(fn x, acc -> Map.merge(acc, x) end)

        results = Map.merge(results, r)
        results_as_mapset = Map.keys(results) |> MapSet.new()

        input = input
        |> Enum.filter(fn {k, _v} -> k not in Map.values(results) end)
        |> Enum.map(fn {k, v} -> {k, MapSet.difference(v, results_as_mapset)} end)

        ingrident_with_alg(input, results)
    end
end