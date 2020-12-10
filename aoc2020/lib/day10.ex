defmodule Day10 do
  def calc(input) do
    input =
      input
      |> String.split("\n", trim: true)
      |> Enum.map(&String.to_integer/1)

    do_calc(Enum.min(input), input, 1, 1)
  end

  defp do_calc(current, input, number_of_ones, number_of_threes) do
    cond do
      Enum.member?(input, current + 1) ->
        do_calc(current + 1, input, number_of_ones + 1, number_of_threes)

      Enum.member?(input, current + 2) ->
        do_calc(current + 2, input, number_of_ones, number_of_threes)

      Enum.member?(input, current + 3) ->
        do_calc(current + 3, input, number_of_ones, number_of_threes + 1)

      true ->
        number_of_ones * number_of_threes
    end
  end
end
