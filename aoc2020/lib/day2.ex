defmodule Day2 do
  def how_many_pass_are_valid(input) do
    input
    |> Enum.map(fn i ->
      [range, letter, password] = i |> String.split(" ")

      [{x, _}, {y, _}] =
        range
        |> String.split("-")
        |> Enum.map(&Integer.parse/1)

      letter = String.replace(letter, ":", "")

      occ =
        password
        |> String.graphemes()
        |> Enum.frequencies()
        |> Map.get(letter, -1)

      occ in x..y
    end)
    |> Enum.count(fn x -> x == true end)
  end
end
