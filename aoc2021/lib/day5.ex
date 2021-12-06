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

  def calc2(input) do
    input
    |> String.split("\n", trim: true)
    |> Stream.map(fn x -> String.replace(x, ~r/(->|,)/, " ") |> String.split() end)
    |> Stream.map(fn x -> Enum.map(x, &String.to_integer/1) end)
    |> Stream.flat_map(fn
      [x, y1, x, y2] -> for(y <- y1..y2, do: {x, y})
      [x1, y, x2, y] -> for(x <- x1..x2, do: {x, y})
      [x1, y1, x2, y2] -> [x1..x2, y1..y2] |> Enum.map(&Enum.to_list/1) |> Enum.zip()
    end)
    |> Enum.frequencies()
    |> Enum.filter(fn {_point, frequencie} -> frequencie > 1 end)
    |> Enum.count()
  end
end
