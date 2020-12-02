defmodule Day2 do
  def how_many_pass_are_valid(input) do
    input
    |> Enum.map(fn i ->
      [range, letter, password] = String.split(i, " ")
      {x, y} = parse_range(range)
      letter = String.replace(letter, ":", "")
      occ = occurrences(password, letter)

      occ in x..y
    end)
    |> Enum.count(fn x -> x == true end)
  end

  defp parse_range(range) do
    [{x, _}, {y, _}] =
      range
      |> String.split("-")
      |> Enum.map(&Integer.parse/1)

    {x, y}
  end

  defp occurrences(password, letter) do
    password
    |> String.graphemes()
    |> Enum.frequencies()
    |> Map.get(letter, 0)
  end
end
