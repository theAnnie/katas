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
end