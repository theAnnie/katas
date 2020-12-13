defmodule ChineseRemainder do
    # taken from 
    # https://github.com/code-shoily/advent_of_code/blob/master/lib/helpers/chinese_remainder.ex
    # thanks from Annie!
    def chinese_remainder(congruences) do
      {modulii, residues} = Enum.unzip(congruences)
      mod_pi = Enum.reduce(modulii, 1, &Kernel.*/2)
      crt_modulii = Enum.map(modulii, &div(mod_pi, &1))
  
      case calculate_inverses(crt_modulii, modulii) do
        nil ->
          nil
  
        inverses ->
          crt_modulii
          |> Enum.zip(
            residues
            |> Enum.zip(inverses)
            |> Enum.map(fn {a, b} -> a * b end)
          )
          |> Enum.map(fn {a, b} -> a * b end)
          |> Enum.sum()
          |> mod(mod_pi)
      end
    end

    def egcd(_, 0), do: {1, 0}
  
    def egcd(a, b) do
      {s, t} = egcd(b, rem(a, b))
      {t, s - div(a, b) * t}
    end
  
    defp mod_inverse(a, b) do
      {x, y} = egcd(a, b)
      (a * x + b * y == 1 && x) || nil
    end
  
    defp mod(a, m) do
      x = rem(a, m)
      (x < 0 && x + m) || x
    end
  
    defp calculate_inverses([], []), do: []
  
    defp calculate_inverses([n | ns], [m | ms]) do
      case mod_inverse(n, m) do
        nil -> nil
        inv -> [inv | calculate_inverses(ns, ms)]
      end
    end
  end