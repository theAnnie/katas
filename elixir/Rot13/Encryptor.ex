defmodule Encryptor do
  def rot13(string) do
    string
    |> to_charlist
    |> Enum.map(&f/1)
    |> to_string
  end

  defp f(char) when char in 110..122, do: char - 13
  defp f(char) when char in 78..90,   do: char - 13
  defp f(char) when char in 65..77,   do: char + 13
  defp f(char) when char in 97..109,  do: char + 13
  defp f(char),                       do: char
end
