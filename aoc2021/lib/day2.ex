defmodule Day2 do
  def calc(input) do
    partial_result =
    input
    |> String.split("\n", trim: true)
    |> Enum.reduce(%{d: 0, f: 0}, fn x, acc ->
      [instruction, value] = String.split(x)
      {value, ""} = Integer.parse(value)
      case instruction do
        "forward" -> Map.put(acc, :f, acc.f + value)
        "up" ->  Map.put(acc, :d, acc.d - value)
        "down" -> Map.put(acc, :d, acc.d + value)
      end
    end)
    partial_result.f * partial_result.d
  end

  def calc2(input) do
    partial_result =
    input
    |> String.split("\n", trim: true)
    |> Enum.reduce(%{h: 0, d: 0, a: 0}, fn x, acc ->
      [instruction, value] = String.split(x)
      {value, ""} = Integer.parse(value)
      case instruction do
        "forward" -> Map.put(acc, :h, acc.h + value) |> Map.put(:d, acc.d + (acc.a * value))
        "up" ->  Map.put(acc, :a, acc.a - value)
        "down" ->  Map.put(acc, :a, acc.a + value)
      end
    end)
    partial_result.h * partial_result.d
  end
end
