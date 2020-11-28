defmodule SongDecoder do
  def decode_song(song) do
    song
    |> String.split("WUB", trim: true) 
    |> Enum.join(" ")
  end
end
