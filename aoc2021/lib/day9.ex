defmodule Day9 do
  def calc(input) do
    input
    |> String.split("\n", trim: true)
    |> Stream.with_index
    |> Stream.map(fn {x, i} -> {String.graphemes(x), i} end)
    |> Stream.map(fn {x, i} -> {Enum.with_index(x), i} end)
    |> Stream.flat_map(fn {x,j} -> Enum.map(x, fn {a,b} -> {a,j,b} end) end)
    |> Stream.map(fn {v, x, y} -> {String.to_integer(v), x, y} end)
    |> Enum.reduce(%{}, fn {v, x, y}, acc ->
      Map.merge(acc, %{{x, y} => v})
    end)
    |> do_calc()
    |> Enum.reject(&is_nil/1)
    |> Enum.sum()
  end

  defp do_calc(matrix) do
    Enum.map(matrix, fn {{x,y}, v} ->

      n1 = Map.get(matrix, {x + 1, y})
      n2 = Map.get(matrix, {x - 1, y})
      n3 = Map.get(matrix, {x, y + 1})
      n4 = Map.get(matrix, {x, y - 1})

      if [n1, n2, n3, n4] |> Enum.all?(fn x -> x > v end), do: v + 1, else: nil
    end)
  end
end
