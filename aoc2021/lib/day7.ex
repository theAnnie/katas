defmodule Day7 do
  def calc(input) do
    input =
      input
      |> String.split(",", trim: true)
      |> Enum.map(&String.to_integer/1)

    median = Statistics.median(input)

    input
    |> Enum.map(fn x -> if x < median, do: median - x, else: x - median end)
    |> Enum.sum()
  end

  def calc2(input) do
    input =
      input
      |> String.split(",", trim: true)
      |> Enum.map(&String.to_integer/1)

    mean = Float.floor(Statistics.mean(input))

    input
    |> Enum.map(fn x -> if x < mean, do: mean - x, else: x - mean end)
    |> Enum.map(fn n -> n * (n + 1) / 2 end)
    |> Enum.sum()
  end
end
