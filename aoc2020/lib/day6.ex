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

    # part 2
    def calc2(input) do
        input
        |> String.split("\n")
        |> Stream.chunk_by(fn x -> x == "" end)
        |> Stream.filter(fn x -> x != [""]end)
        |> Stream.map(fn x -> {Enum.join(x), Enum.count(x)} end)
        |> Stream.map(fn x -> do_calc(x) end)
        |> Enum.sum()
    end

    defp do_calc({str, 1}), do: String.length(str)

    defp do_calc({str, n}) do
        str
        |> String.graphemes()
        |> Enum.frequencies()
        |> Enum.filter(fn {_k,v} -> v == n end)
        |> Enum.count()
    end
end