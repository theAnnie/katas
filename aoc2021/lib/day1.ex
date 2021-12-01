defmodule Day1 do
  def calc(input) do
    {_, result} =
      input
      |> String.split()
      |> Enum.map(fn x ->
        {x, ""} = Integer.parse(x)
        x
      end)
      |> Enum.reduce({0, -1}, fn x, acc ->
        {current, counter} = acc
        counter = if x > current, do: counter + 1, else: counter
        {x, counter}
      end)

      result
  end
end
