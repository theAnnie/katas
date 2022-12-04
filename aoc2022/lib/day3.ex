defmodule Day3 do
  def calc(input) do
    input
    |> String.split("\n", trim: true)
    |> Enum.map(&split_word/1)
    |> Enum.map(&to_map_set/1)
    |> Enum.map(fn {a, b} -> MapSet.intersection(a, b) end)
    |> Enum.map(fn x -> x |> MapSet.to_list() |> hd() |> :binary.first() end)
    |> Enum.map(&to_value/1)
    |> Enum.sum()
  end

  defp split_word(word) do
    len = trunc(String.length(word) / 2)
    {String.slice(word, 0, len), String.slice(word, -len, len)}
  end

  defp to_map_set({a, b}) do
    a = a |> String.graphemes() |> MapSet.new()
    b = b |> String.graphemes() |> MapSet.new()
    {a, b}
  end

  defp to_value(c) do
    if c > 96, do: c - 96, else: c - 38
  end
end
