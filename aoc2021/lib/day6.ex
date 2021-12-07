defmodule Day6 do
  def calc(input, days) do
    input
    |> String.split(",")
    |> Enum.map(&String.to_integer/1)
    |> do_calc(days)
    |> Enum.count()
  end

  defp do_calc(input, 0), do: input
  defp do_calc(input, days) do
    new_lamps = Enum.count(input, fn x -> x == 0 end)
    input = Enum.map(input, fn x -> if x == 0, do: 6 , else: x - 1 end)

    if new_lamps > 0 do
      x = 1..new_lamps |> Enum.map(fn _ -> 8 end)
      do_calc(input ++ x, days - 1)
    else
      do_calc(input, days - 1)
    end
  end
end
