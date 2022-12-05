defmodule Day4 do
  def calc(input) do
    input
    |> String.split("\n", trim: true)
    |> Enum.map(&parse/1)
    |> Enum.map(fn [{a, b}, {c, d}] ->
      (a <= c and b >= d) or (c <= a and d >= b)
    end)
    |> Enum.count(fn x -> x == true end)
  end

  defp parse(str) do
    str
    |> String.split(",")
    |> Enum.map(fn s ->
      [a, b] = String.split(s, "-")
      {String.to_integer(a), String.to_integer(b)}
    end)
  end
end
