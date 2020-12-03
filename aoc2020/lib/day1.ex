defmodule Day1 do
  def calc(input) do
    for x <- input,
        y <- input do
      if x + y == 2020, do: x * y
    end
    |> Stream.filter(fn x -> x != nil end)
    |> Enum.uniq()
  end

  # part2
  def calc2(input) do
    for x <- input,
        y <- input,
        z <- input do
      if x + y + z == 2020, do: x * y * z
    end
    |> Stream.filter(fn x -> x != nil end)
    |> Enum.uniq()
  end
end
