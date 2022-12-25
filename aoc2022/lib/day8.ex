defmodule Day8 do
  def calc(input) do
    list =
      input
      |> String.split()
      |> Stream.map(&String.graphemes/1)
      |> Stream.map(fn x -> Enum.map(x, &String.to_integer/1) end)
      |> Stream.map(&Enum.with_index/1)
      |> Enum.with_index()

    edge = [0, length(list) - 1]

    list
    |> Enum.map(fn {l, i} ->
      Enum.reduce(l, 0, fn {_x_v, x_i} = x, acc ->
        if Enum.member?(edge, i) or Enum.member?(edge, x_i) do
          acc + 1
        else
          if visible?(x, i, list), do: acc + 1, else: acc
        end
      end)
    end)
    |> Enum.sum()
  end

  defp visible?(x, index, list) do
    left?(x, index, list) or
      right?(x, index, list) or
      up?(x, index, list) or
      down?(x, index, list)
  end

  defp left?({x_v, x_i}, index, list),
    do: list |> Enum.at(index) |> elem(0) |> Enum.take(x_i) |> Enum.all?(fn {x, _} -> x < x_v end)

  defp right?({x_v, x_i}, index, list),
    do:
      list
      |> Enum.at(index)
      |> elem(0)
      |> Enum.take(x_i - length(list) + 1)
      |> Enum.all?(fn {x, _} -> x < x_v end)

  defp up?({x_v, x_i}, index, list),
    do: list |> Enum.take(index) |> Enum.all?(fn {x, _} -> Enum.at(x, x_i) |> elem(0) < x_v end)

  defp down?({x_v, x_i}, index, list),
    do:
      list
      |> Enum.take(index - length(list) + 1)
      |> Enum.all?(fn {x, _} -> Enum.at(x, x_i) |> elem(0) < x_v end)

  def calc2(input) do
    list =
      input
      |> String.split()
      |> Stream.map(&String.graphemes/1)
      |> Stream.map(fn x -> Enum.map(x, &String.to_integer/1) end)
      |> Stream.map(&Enum.with_index/1)
      |> Enum.with_index()

    list
    |> Enum.map(fn {l, i} ->
      Enum.map(l, fn x ->
        scenic_score(x, i, list)
      end)
    end)
    |> List.flatten()
    |> Enum.max()
  end

  defp scenic_score({x_v, x_i}, index, list) do
    left =
      list
      |> Enum.at(index)
      |> elem(0)
      |> Enum.take(x_i)
      |> Enum.map(fn {x, _} -> x end)
      |> Enum.reverse()
      |> count_visible(x_v)

    right =
      list
      |> Enum.at(index)
      |> elem(0)
      |> Enum.take(x_i - length(list) + 1)
      |> Enum.map(fn {x, _} -> x end)
      |> count_visible(x_v)

    up =
      list
      |> Enum.take(index)
      |> Enum.map(fn {x, _} -> Enum.at(x, x_i) |> elem(0) end)
      |> Enum.reverse()
      |> count_visible(x_v)

    down =
      list
      |> Enum.take(index - length(list) + 1)
      |> Enum.map(fn {x, _} -> Enum.at(x, x_i) |> elem(0) end)
      |> count_visible(x_v)

    left * right * up * down
  end

  defp count_visible(list, x_v) do
    Enum.reduce_while(list, 0, fn x, acc ->
      if x < x_v, do: {:cont, acc + 1}, else: {:halt, acc + 1}
    end)
  end
end
