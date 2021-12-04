defmodule Day4 do
  def calc(input) do
    [numbers | boards] =
      input
      |> String.split("\n", trim: true)

    numbers = numbers |> String.split(",")

    boards
    |> Enum.chunk_every(5)
    |> Enum.map(fn x -> Enum.map(x, &String.split/1) end)
    |> do_calc(numbers)
  end

  defp do_calc(boards, numbers) do
    [h | t] = numbers

    boards =
      boards
      |> Enum.map(fn x ->
        Enum.map(x, fn y ->
          if h in y do
            index = Enum.find_index(y, fn z -> z == h end)
            List.replace_at(y, index, "X")
          else
            y
          end
        end)
      end)

    {b, sum} = finish?(boards)

    if b do
      result(sum, h)
    else
      {b2, sum2} = finish2?(boards)

      if b2 do
        result(sum2, h)
      else
        do_calc(boards, t)
      end
    end
  end

  defp finish?(boards) do
    boards
    |> Enum.map(fn x ->
      Enum.reduce_while(x, false, fn y, _acc ->
        if Enum.all?(y, fn z -> z == "X" end) do
          {:halt, x}
        else
          {:cont, []}
        end
      end)
    end)
    |> Enum.flat_map(fn x -> x end)
    |> case do
      [] -> {false, []}
      x -> {true, x}
    end
  end

  defp finish2?(boards) do
    boards
    |> Enum.map(fn x ->
      Enum.map(x, fn y ->
        Enum.with_index(y)
      end)
    end)
    |> Enum.map(fn x ->
      Enum.flat_map(x, fn y -> y end)
      |> Enum.sort_by(&elem(&1, 1))
      |> Enum.map(fn {x, _i} -> x end)
      |> Enum.chunk_every(5)
    end)
    |> Enum.map(fn x ->
      Enum.reduce_while(x, false, fn y, _acc ->
        if Enum.all?(y, fn z -> z == "X" end) do
          {:halt, x}
        else
          {:cont, []}
        end
      end)
    end)
    |> Enum.flat_map(fn x -> x end)
    |> case do
      [] -> {false, []}
      x -> {true, x}
    end
  end

  defp result(sum, value) do
    sum =
      sum
      |> Enum.flat_map(fn x -> x end)
      |> Enum.filter(fn x -> x != "X" end)
      |> Enum.reduce(0, fn x, acc ->
        {x, ""} = Integer.parse(x)
        acc + x
      end)

    {value, ""} = Integer.parse(value)

    sum * value
  end
end
