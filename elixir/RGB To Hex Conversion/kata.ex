defmodule Kata do
    def rgb(r,g,b), do: parse(r) <> parse(g) <> parse(b)
    
    defp parse(x) when x < 0,      do: "00"
    defp parse(x) when x in 0..15, do: "0" <> Integer.to_string(x, 16)
    defp parse(x) when x > 255,    do: "FF"
    defp parse(x),                 do: Integer.to_string(x, 16)
end
