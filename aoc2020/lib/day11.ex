defmodule Day11 do
    def calc(input) do
    input
    |> String.split("\n", trim: true)
    |> Stream.with_index
    |> Stream.map(fn {x, i} -> {String.graphemes(x), i} end)
    |> Stream.map(fn {x, i} -> {Enum.with_index(x), i} end)
    |> Stream.flat_map(fn {x,j} -> Enum.map(x, fn {a,b} -> {a,j,b} end) end)
    |> Stream.map(fn {x, i, j} -> %{{i,j} => x} end)
    |> Enum.reduce(fn x, acc -> Map.merge(acc, x) end)
    |> do_calc()
    end

    defp do_calc(input) do
        x = Map.new(input, fn {k, _v} = x -> {k, change_value_of_current(x, input)} end)
        if x == input, do: calc_result(input), else: do_calc(x)
    end

    defp calc_result(input) do
        input
        |> Map.values()
        |> Enum.count(fn x -> x == "#" end)
    end
  
    defp change_value_of_current({{x,y}, v}, input) do
      n1 = input |> Map.get({x - 1, y - 1}, "L")
      n2 = input |> Map.get({x - 1, y}, "L")
      n3 = input |> Map.get({x - 1, y + 1}, "L")
      n4 = input |> Map.get({x, y - 1}, "L")
      n5 = input |> Map.get({x, y + 1}, "L")
      n6 = input |> Map.get({x + 1, y - 1}, "L")
      n7 = input |> Map.get({x + 1, y}, "L")
      n8 = input |> Map.get({x + 1, y + 1}, "L")
    
      n = [n1, n2, n3, n4, n5, n6, n7, n8]

      case v do
        "." -> v
        "#" -> if Enum.count(n, fn y -> y == "#" end) > 3, do: "L", else: "#"
        "L" -> if Enum.member?(n, "#"), do: "L", else: "#"
      end
    end
  end
  