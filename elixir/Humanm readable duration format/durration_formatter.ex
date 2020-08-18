defmodule DurationFormatter do
  @year 365 * 24 * 60 * 60
  @day 24 * 60 * 60
  @hour 60 * 60
  @minute 60

  def format_duration(0), do: "now"

  def format_duration(x) do
   {years, rest}      = calc(x, @year)
   {days, rest}       = calc(rest, @day)
   {hours, rest}      = calc(rest, @hour)
   {minutes, seconds} = calc(rest, @minute)

   info = [pretty(years, :y), pretty(days, :d), pretty(hours, :h), pretty(minutes, :m), pretty(seconds, :s)]
   |> Enum.filter(fn  x -> x != "" end)

   last = List.last(info)

   info
   |> Enum.join(", ")
   |> String.replace_suffix(", #{last}", " and #{last}")
  end

  defp calc(x, unit) do
    result = div(x, unit)
    rest = if result == 0 do x else x - (result * unit) end
    {result,  rest}
  end

  defp pretty(0, _sufix), do: ""
  defp pretty(1, :s), do: "1 second"
  defp pretty(1, :m), do: "1 minute"
  defp pretty(1, :h), do: "1 hour"
  defp pretty(1, :d), do: "1 day"
  defp pretty(1, :y), do: "1 year"
  defp pretty(x, :s), do: "#{x} seconds"
  defp pretty(x, :m), do: "#{x} minutes"
  defp pretty(x, :h), do: "#{x} hours"
  defp pretty(x, :d), do: "#{x} days"
  defp pretty(x, :y), do: "#{x} years"
end

