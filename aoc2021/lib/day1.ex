defmodule Day1 do
  def calc(input) do
    input
    |> parse_input()
    |> count()
  end

  def calc2(input) do
    list = parse_input(input)

    list
    |> Enum.with_index()
    |> Enum.map(fn {x, i} ->
      x + Enum.at(list, i + 1, 0) + Enum.at(list, i + 2, 0)
    end)
    |> count()
  end

  defp count(list) do
    {_, result} =
      list
      |> Enum.reduce({0, -1}, fn x, acc ->
        {current, counter} = acc
        counter = if x > current, do: counter + 1, else: counter
        {x, counter}
      end)

    result
  end

  defp parse_input(input) do
    input
    |> String.split()
    |> Enum.map(fn x ->
      {x, ""} = Integer.parse(x)
      x
    end)
  end
end
