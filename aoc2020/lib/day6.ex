defmodule Day6 do

    def calc(input) do
        input
        |> String.split("\n")
        |> Stream.chunk_by(fn x -> x == "" end)
        |> Stream.filter(fn x -> x != [""]end)
        |> Stream.map(&Enum.join/1)
        |> Stream.map(&String.graphemes/1)
        |> Stream.map(&Enum.uniq/1)
        |> Stream.map(&Enum.count/1)
        |> Enum.sum()
    end
end