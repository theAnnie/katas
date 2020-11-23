defmodule TribonacciSequence do

  @spec tribonacci({number, number, number}, non_neg_integer) :: [number]
  def tribonacci(signature, n) do
    signature
    |> Tuple.to_list()
    |> calc(n) 
  end
  
  defp calc(signature, 0), do: []
  defp calc(signature, 1), do: [hd(signature)]
  defp calc([a, b| _], 2), do: [a, b]
  defp calc(signature, 3), do: signature
  defp calc(signature, n) do
   [a, b, c | _tail] = list = Enum.reverse(signature)
   [a + b + c | list] 
   |> Enum.reverse()
   |> calc(n-1)
  end
end
