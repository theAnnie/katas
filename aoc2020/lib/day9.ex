defmodule Day9 do
    def calc(input) do
        input = input 
        |> String.split("\n", trim: true)
        |> Stream.map(&String.to_integer/1)
        |> Enum.with_index()

        do_calc2(input, input)
    end

    defp do_calc(input, index) do
       current = Enum.at(input, index)
       numbers = Enum.slice(input, index - 25 .. index)

       finish? = for x <- numbers,
           y <- numbers do
            if x + y == current && x != y do
                true
            else
                false
            end
        end |> Enum.member?(true)

        if finish?, do: do_calc(input, index + 1), else: current
    end

    @invalid_number 257342611
    defp do_calc2(orginal_input, current) do
        [{_, i} | t] = current

        {acc, j} = Enum.reduce_while(current, 0, fn {x, j}, acc ->
            if acc < @invalid_number, do: {:cont, acc + x}, else: {:halt, {acc, j}}
        end)

        if acc == @invalid_number do
            l = Enum.slice(orginal_input, i .. j) |> Enum.map(fn {x, _} -> x end)
            Enum.max(l) + Enum.min(l)
        else
            do_calc2(orginal_input, t)
        end
    end
end