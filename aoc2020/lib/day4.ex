defmodule Day4 do
  @required_fields ~w(byr iyr eyr hgt hcl ecl pid)

  def how_many_passports_are_valid(input) do
    input
    |> String.split("\n")
    |> Stream.chunk_by(fn x -> x == "" end)
    |> Stream.filter(fn x -> x != [""] end)
    |> Stream.map(fn x -> Enum.join(x, " ") end)
    |> Stream.map(&is_valid_passport/1)
    |> Enum.count(fn x -> x == false end)
  end

  defp is_valid_passport(passport) do
    @required_fields
    |> Enum.map(fn rf -> String.contains?(passport, rf) end)
    |> Enum.member?(false)
  end
end
