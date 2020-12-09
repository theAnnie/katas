defmodule Day9 do

    def calc(input) do
        input = input 
        |> String.split("\n", trim: true)
        |> Enum.map(&String.to_integer/1)
        |> do_calc(25)
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
end