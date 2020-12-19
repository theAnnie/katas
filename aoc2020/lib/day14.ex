defmodule Day14 do

    def calc(input) do
        input
        |> String.split("\n", trim: true)
        |> Enum.chunk_by(fn x -> String.starts_with?(x, "mask") end)
        |> do_calc(%{})
    end

    defp do_calc([], results) do
        results
        |> Map.values
        |> Enum.sum
    end

    defp do_calc(input, results) do
        [mask, operations | t] = input
        mask = mask |> hd() |> parse_mask()
        result = Enum.map(operations, fn o -> handle_operation(o, mask) end)
      
        x = Enum.reduce(result, fn x, acc -> 
            Map.merge(acc, x)
        end)

        do_calc(t, Map.merge(results, x))
    end

    defp handle_operation(operation, mask) do
        {k, v} = parse_op(operation)
        v = to_binary(v) |> String.graphemes

        missing = List.duplicate(0, Enum.count(mask) - Enum.count(v))
        v = missing ++ v

        v = v
        |> Stream.zip(mask)
        |> Stream.map(fn {x,y} -> if y == "X", do: x, else: y end)
        |> Enum.join()

        %{k => String.to_integer(v, 2)}
    end

    defp parse_op(operation) do
        [key, _ ,value] = String.split(operation, " ")
        "mem[" <> x = key
        key = String.replace(x, "]", "") # i'm sorry for that code :(
        {key, value}
    end

    def parse_mask(mask) do
        "mask = " <> mask = mask

        mask
        |> String.graphemes() 
        |> Enum.drop_while(fn x -> x == "X" end)
    end

    defp to_binary(x), do: x |> String.to_integer() |> Integer.to_string(2)
end