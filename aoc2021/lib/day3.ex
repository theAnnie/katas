defmodule Day3 do
  def calc(input) do
    partial_result =
      input
      |> String.split("\n", trim: true)
      |> Enum.map(&String.graphemes/1)
      |> Enum.flat_map(fn x -> Enum.with_index(x) end)
      |> Enum.sort_by(&elem(&1, 1))

    list_sizes = Enum.count(partial_result, fn {_, i} -> i == 0 end)

    result =
      partial_result
      |> Enum.map(fn x -> elem(x, 0) end)
      |> Enum.chunk_every(list_sizes)
      |> Enum.reduce("", fn x, acc ->
        no_of_zeros = Enum.count(x, fn y -> y == "0" end)
        no_of_ones = Enum.count(x, fn y -> y == "1" end)
        bit = if no_of_zeros > no_of_ones, do: "0", else: "1"
        acc <> bit
      end)

    result2 =
      result
      |> String.graphemes()
      |> Enum.map(fn e -> if e == "0", do: "1", else: "0" end)
      |> Enum.join()

    {result, ""} = Integer.parse(result, 2)
    {result2, ""} = Integer.parse(result2, 2)
    result * result2
  end

  def calc2(input) do
    input =
      input
      |> String.split("\n", trim: true)
      |> Enum.map(&String.graphemes/1)

    {o, ""} = input |> oxygen(0) |> Enum.join() |> Integer.parse(2)
    {c, ""} = input |> cotwo(0) |> Enum.join() |> Integer.parse(2)

    o * c
  end

  defp oxygen([x], _), do: x

  defp oxygen(acc, i) do
    foo = Enum.map(acc, fn y -> Enum.at(y, i) end)
    no_of_zeros = Enum.count(foo, fn y -> y == "0" end)
    no_of_ones = Enum.count(foo, fn y -> y == "1" end)

    bit =
      cond do
        no_of_ones == no_of_zeros -> "1"
        no_of_ones > no_of_zeros -> "1"
        no_of_zeros > no_of_ones -> "0"
      end

    acc = Enum.filter(acc, fn y -> Enum.at(y, i) == bit end)

    oxygen(acc, i + 1)
  end

  defp cotwo([x], _), do: x

  defp cotwo(acc, i) do
    foo = Enum.map(acc, fn y -> Enum.at(y, i) end)
    no_of_zeros = Enum.count(foo, fn y -> y == "0" end)
    no_of_ones = Enum.count(foo, fn y -> y == "1" end)

    bit =
      cond do
        no_of_ones == no_of_zeros -> "1"
        no_of_ones > no_of_zeros -> "1"
        no_of_zeros > no_of_ones -> "0"
      end

    acc = Enum.filter(acc, fn y -> Enum.at(y, i) != bit end)

    cotwo(acc, i + 1)
  end
end
