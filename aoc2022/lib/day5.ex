defmodule Day5 do
  def calc(stacks, instructions) do
    instructions
    |> String.split("\n", trim: true)
    |> Enum.reduce(stacks, fn i, acc ->
      [x, from, to] =
        i
        |> String.replace(~r/[a-z]/, "")
        |> String.split()
        |> Enum.map(&String.to_integer/1)

      from_stack = acc[from]
      to_stack = acc[to]

      take = from_stack |> Enum.reverse() |> Enum.take(x)
      # part 2
      # take = from_stack |> Enum.reverse() |> Enum.take(x) |> Enum.reverse()
      new_from_stack = from_stack |> Enum.drop(-x)
      new_to_stack = to_stack ++ take

      acc
      |> Map.put(from, new_from_stack)
      |> Map.put(to, new_to_stack)
    end)
    |> Enum.map(fn {_k, v} -> List.last(v) end)
    |> Enum.join()
  end
end
