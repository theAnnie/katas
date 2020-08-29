defmodule Kata do
  def count(""), do: 0

  def count(str) do
    str
    |> String.downcase()
    |> String.graphemes()
    # should be Enum., codewars supports old Elixir
    |> frequencies()
    |> Map.values()
    |> Enum.filter(fn x -> x != 1 end)
    |> length()
  end

  defp frequencies(enumerable) do
    Enum.reduce(enumerable, %{}, fn key, acc ->
      case acc do
        %{^key => value} -> %{acc | key => value + 1}
        %{} -> Map.put(acc, key, 1)
      end
    end)
  end
end
