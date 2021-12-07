defmodule Day6 do
  def calc(input, days) do
    input
    |> String.split(",")
    |> Enum.map(&String.to_integer/1)
    |> Enum.reduce(
      %{0 => 0, 1 => 0, 2 => 0, 3 => 0, 4 => 0, 5 => 0, 6 => 0, 7 => 0, 8 => 0},
      fn x, acc -> Map.put(acc, x, Map.get(acc, x) + 1) end
    )
    |> do_calc(days)
    |> Map.values()
    |> Enum.sum()
  end

  defp do_calc(input, 0), do: input
  defp do_calc(input, days) do
    # sexy, but slow solution for part 1
    # new_lamps = Enum.count(input, fn x -> x == 0 end)
    # input = Enum.map(input, fn x -> if x == 0, do: 6, else: x - 1 end)

    # if new_lamps > 0 do
    #   x = 1..new_lamps |> Enum.map(fn _ -> 8 end)
    #   do_calc(input ++ x, days - 1)
    # else
    #   do_calc(input, days - 1)
    # end

    no_of_0 = Map.get(input, 0)
    no_of_1 = Map.get(input, 1)
    no_of_2 = Map.get(input, 2)
    no_of_3 = Map.get(input, 3)
    no_of_4 = Map.get(input, 4)
    no_of_5 = Map.get(input, 5)
    no_of_6 = Map.get(input, 6)
    no_of_7 = Map.get(input, 7)
    no_of_8 = Map.get(input, 8)

    input
    |> Map.put(0, no_of_1)
    |> Map.put(1, no_of_2)
    |> Map.put(2, no_of_3)
    |> Map.put(3, no_of_4)
    |> Map.put(4, no_of_5)
    |> Map.put(5, no_of_6)
    |> Map.put(6, no_of_7 + no_of_0)
    |> Map.put(7, no_of_8)
    |> Map.put(8, no_of_0)
    |> do_calc(days - 1)
  end
end
