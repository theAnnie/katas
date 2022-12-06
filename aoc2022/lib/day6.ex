defmodule Day6 do
  def calc(input) do
    [a, b, c, d | rest] = String.graphemes(input)

    Enum.reduce_while(rest, {4, [a, b, c, d]}, fn x, {counter, list} ->
      if Enum.uniq(list) == list do
        {:halt, counter}
      else
        list = list |> tl() |> Enum.reverse()
        list = [x | list] |> Enum.reverse()
        {:cont, {counter + 1, list}}
      end
    end)
  end

  def calc2(input) do
    input = String.graphemes(input)

    Enum.reduce_while(Enum.drop(input, 14), {14, Enum.take(input, 14)}, fn x, {counter, list} ->
      if Enum.uniq(list) == list do
        {:halt, counter}
      else
        list = list |> tl() |> Enum.reverse()
        list = [x | list] |> Enum.reverse()
        {:cont, {counter + 1, list}}
      end
    end)
  end
end
