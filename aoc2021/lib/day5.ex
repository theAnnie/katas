defmodule Day5 do
  def calc(input) do
    input
    |> String.split("\n", trim: true)
    |> Stream.map(fn x -> String.replace(x, ~r/(->|,)/, " ") |> String.split() end)
    |> Stream.map(fn x -> Enum.map(x, &String.to_integer/1) end)
    |> Stream.reject(fn
      [x, _, x, _] -> false
      [_, y, _, y] -> false
      _ -> true
    end)
    |> Stream.map(fn [x1, y1, x2, y2] -> {x1..x2, y1..y2} end)
    |> Stream.flat_map(fn {xr, yr} -> for(x <- xr, y <- yr, do: {x, y}) end)
    |> Enum.frequencies()
    |> Enum.filter(fn {_point, frequencie} -> frequencie > 1 end)
    |> Enum.count()
  end
end
