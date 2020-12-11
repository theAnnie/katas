defmodule Day8 do

    def acc_value(input) do
        input 
        |> String.split("\n", trim: true) 
        |> do_calc(0, [], 0)
    end

    defp do_calc(input, index, visited_indexes, value) do
        if Enum.member?(visited_indexes, index) do
            value
        else
            current_op = Enum.at(input, index)
            visited = [index | visited_indexes]
            {value, index} = handle_operation(current_op, value, index)
            do_calc(input, index, visited, value)
        end
    end

    defp handle_operation(op, value, index) do
        case op do
            "acc +" <> x  -> {value + String.to_integer(x), index + 1}
            "acc -" <> x  -> {value - String.to_integer(x), index + 1}
            "jmp +" <> x  -> {value, index + String.to_integer(x)}
            "jmp -" <> x  -> {value, index - String.to_integer(x)}
            "nop"   <> _x -> {value, index + 1}
        end
    end

    #part 2
    def acc_value2(input) do
        input 
        |> String.split("\n", trim: true)
        |> do_calc2(0, [], 0)
    end

    defp do_calc2(input, index, visited_indexes, value) do
        x = input
        |> Stream.with_index()
        |> Stream.map(fn {x,y} -> if String.starts_with?(x, "jmp") || String.starts_with?(x, "nop"), do: y end)
        |> Enum.filter(fn x -> x != nil end)

        do_calc2(input, index, visited_indexes, value, x, input)
    end

    defp do_calc2(input, index, visited_indexes, value, indexes_to_try, orginal_input) do
        if Enum.member?(visited_indexes, index) do
            [h | t] = indexes_to_try
            input = orginal_input
            |> Stream.with_index()
            |> Enum.map(fn {x,y} -> if y == h, do: replace(x), else: x end)
            do_calc2(input, 0, [], 0, t, orginal_input)
        else
            current_op = Enum.at(input, index)
            case current_op do
                nil -> 
                    value
                _ ->
                    visited = [index | visited_indexes]
                    {value, index} = handle_operation(current_op, value, index)
                    do_calc2(input, index, visited, value, indexes_to_try, orginal_input)
            end
        end
    end

    defp replace(op) do
        case op do
            "jmp" <> x -> "nop" <> x
            "nop" <> x -> "jmp" <> x
        end
    end
end