defmodule Kata do
    def solve(s) do
        s
        |> String.split(~w(a e i o u))
        |> Stream.map(&String.graphemes/1)
        |> Stream.map(&value/1)
        |> Enum.max()
    end
    
    defp value(list) do 
      list
      |> Stream.map(fn char -> (char |> String.to_charlist |> hd) - 96 end)
      |> Enum.sum()
    end
end
