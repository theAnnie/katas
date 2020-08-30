defmodule LotteryTicket do
  def bingo(ticket, win) do
    result =
      ticket
      |> Enum.map(fn [x, y] -> x |> String.to_charlist() |> Enum.member?(y) end)
      |> Enum.count(fn x -> x == true end)

    if result >= win, do: "Winner!", else: "Loser!"
  end
end
