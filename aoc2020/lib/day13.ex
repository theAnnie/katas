defmodule Day13 do
  def calc(input) do
    [wanted, input] = String.split(input, "\n", trim: true)

    wanted = String.to_integer(wanted)

    input =
      input
      |> String.split(",")
      |> Stream.filter(fn x -> x != "x" end)
      |> Enum.map(&String.to_integer/1)

    {time, bus_id} =
      wanted
      |> do_calc(input, [])
      |> Enum.sort()
      |> hd()

    (time - wanted) * bus_id
  end

  defp do_calc(_wanted, [], results), do: results

  defp do_calc(wanted, input, results) do
    [h | t] = input
    value = find_nearest(h, h, wanted)
    do_calc(wanted, t, [{value, h} | results])
  end

  defp find_nearest(x, bus_id, number),
    do: if(x >= number, do: x, else: find_nearest(x + bus_id, bus_id, number))

  # part 2

  def calc2(input) do
    input
    |> String.split("\n", trim: true)
    |> hd()
    |> String.split(",")
    |> Stream.with_index()
    |> Stream.filter(fn {x, _} -> x != "x" end)
    |> Enum.map(fn {x, y} -> {String.to_integer(x), y} end)
    |> do_calc()
  end

  defp do_calc(input) do
    input
    |> Enum.map(fn {x, i} -> {x, x - i} end)
    |> ChineseRemainder.chinese_remainder()
  end
end
