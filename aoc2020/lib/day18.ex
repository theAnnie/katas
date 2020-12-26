defmodule Day18 do
    def calc(input) do
        input
        |> String.split("\n", trim: true)
        |> Stream.map(&do_calc/1)
        |> Stream.map(&String.to_integer/1)
        |> Enum.sum
    end

    defp do_calc(input) do
        input
        |> filter_brackets()
        |> count_while()
    end

    defp count_while(str) do
        if String.contains?(str, "+") || String.contains?(str, "*") do
            str = count(str)
            count_while(str)
        else
            str
        end
    end

    defp filter_brackets(input) do
        if String.contains?(input, "(") do
            {i,j} = indexes(input, 0, %{})
            s = String.slice(input, i..j)
            input = String.replace(input, s, count(s))
            filter_brackets(input)
        else
            input
        end
    end

    defp indexes(_,_,%{l: l, r: r}), do: {l, r}
    defp indexes(input, index, m) do
        {h, t} = String.next_grapheme(input)
        m = case h do
            "(" -> Map.put(m, :l, index)
            ")" -> Map.put(m, :r, index)
            _ -> m
        end
        indexes(t, index + 1, m)
    end

    defp count(str) do
        str = String.split(str, " ") 
        |> Enum.map(fn x -> String.replace(x, "(", "") end)
        |> Enum.map(fn x -> String.replace(x, ")", "") end)

        [a, b, c | t] = str
        (op(b,a,c) <> " " <> Enum.join(t, " ")) 
        |> String.replace_trailing(" ", "")
        |> count_while()
    end

    defp op("+", x, y), do: (String.to_integer(x) + String.to_integer(y)) |> Integer.to_string
    defp op("*", x, y), do: (String.to_integer(x) * String.to_integer(y)) |> Integer.to_string
end