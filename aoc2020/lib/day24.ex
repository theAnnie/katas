defmodule Day24 do

    def calc(input) do
        input
        |> String.split("\n", trim: true)
        |> Stream.map(&String.graphemes/1)
        |> Stream.map(fn x -> do_calc(x, {0, 0}) end)
        |> Enum.frequencies()
        |> Enum.count(fn {_k,v} -> rem(v, 2) != 0 end)
    end

    defp do_calc([], location), do: location
    defp do_calc(input, location) do
        [h | t] = input
        {h,t } = case h do
            x when x in ~w(s n) -> [h1 | t1] = t; {h <> h1, t1}
            _ -> {h,t}
        end
        location = translate(h, location)
        do_calc(t, location)
    end

    defp translate("e", {x, y}), do: {x + 2, y + 0}
    defp translate("w", {x, y}), do: {x - 2, y + 0}
    defp translate("se",{x, y}), do: {x + 1, y + 1}
    defp translate("sw",{x, y}), do: {x - 1, y + 1}
    defp translate("ne",{x, y}), do: {x + 1, y - 1}
    defp translate("nw",{x, y}), do: {x - 1, y - 1}
end