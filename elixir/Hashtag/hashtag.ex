defmodule Hashtag do    
  def generate(str) do
    str
    |> String.split()
    |> Enum.map_join(&String.capitalize/1)
    |> legit_hashtag?()
  end
  
  defp legit_hashtag?(""), do: false
  defp legit_hashtag?(str) do
    tag = "#" <> str
    if String.length(tag) > 140 do false else tag end
  end
end
