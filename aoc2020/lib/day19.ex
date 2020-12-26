defmodule Day19 do
  @valid ~w(a b |)

  def calc(input) do
    [rules, input] = input
      |> String.split("\n\n", trim: true)
      |> Enum.map(fn x -> String.split(x, "\n") end)

    rules = build_rules(rules)
    matcher = regex(rules, "0") |> (fn exp -> "^#{exp}$" end).() |> Regex.compile!()

    input
    |> Stream.map(fn x -> Regex.match?(matcher, x) end)
    |> Enum.count(fn x -> x == true end)
  end

  defp build_rules(rules) do
    rules
    |> Stream.map(fn x -> String.split(x, ": ") end)
    |> Stream.map(fn [k,v] -> %{k => v} end)
    |> Enum.reduce(fn x, acc -> Map.merge(x, acc) end)
  end

  defp regex(_rules, x) when x in @valid, do: x
  defp regex(rules, target) do
    rules
    |> Map.get(target)
    |> String.split(" ", trim: true)
    |> Enum.map(&regex(rules, &1))
    |> case do
      [x] -> x
      l   -> "(#{Enum.join(l, "")})"
    end
  end
end
