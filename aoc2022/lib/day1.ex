defmodule Day2 do
  def calc(input) do
    input
    |> String.split("\n", trim: true)
    |> Enum.map(&line_total/1)
    |> Enum.sum()
  end

  defp line_total(line) do
    [x, y] = String.split(line)

    case {normalize(x), normalize(y)} do
      {same, same} -> same + 3
      {1, 2} -> 6 + 2
      {1, 3} -> 3
      {2, 1} -> 1
      {2, 3} -> 6 + 3
      {3, 1} -> 6 + 1
      {3, 2} -> 2
    end
  end

  # 1 Rock, 2 Paper, 3 scissor
  defp normalize("A"), do: 1
  defp normalize("B"), do: 2
  defp normalize("C"), do: 3
  defp normalize("X"), do: 1
  defp normalize("Y"), do: 2
  defp normalize("Z"), do: 3
end
