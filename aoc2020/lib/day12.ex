defmodule Day12 do
    def ship_location(input) do
        {{_, x}, {_, y}, _, _} = input
        |> String.split("\n", trim: true)         # 1=e, 2=s etc.
        |> calc({{:n, 0}, {:e, 0}, {:degrees, 0}, {:course, 1}})
        x + y
    end

    defp calc([], current_location), do: current_location

    defp calc(input, current_location) do
        [h | t] = input
        [operation | number] = String.graphemes(h)
        {number, ""} = number |> Enum.join() |> Integer.parse()
        current = handle(operation, number, current_location)
        calc(t, current)
    end

    defp handle("N", x, {{:n, y}, a, b, c}), do: {{:n, x + y}, a, b, c}
    defp handle("N", x, {{:s, y}, a, b, c}) do
        z = y - x
        if z > 0, do: {{:s, z}, a, b, c}, else: {{:n, z * (-1)}, a, b, c}
    end

    defp handle("S", x, {{:s, y}, a, b, c}), do: {{:s, x + y}, a, b, c}
    defp handle("S", x, {{:n, y}, a, b, c}) do
        z = y - x
        if z > 0, do: {{:n, z}, a, b, c}, else: {{:s, z * (-1)}, a, b, c}
    end

    defp handle("E", x, {a, {:e, y}, b, c}), do: {a, {:e, x + y}, b, c}
    defp handle("E", x, {a, {:w, y}, b, c}) do
        z = y - x
        if z > 0, do: {a, {:w, z}, b, c}, else: {a, {:e, z * (-1)}, b, c}
    end

    defp handle("W", x, {a, {:w, y}, b, c}), do: {a, {:w, x + y}, b, c}
    defp handle("W", x, {a, {:e, y}, b, c}) do
        z = y - x
        if z > 0, do: {a, {:e, z}, b, c}, else: {a, {:w, z * (-1)}, b, c}
    end
    
    defp handle("R", x, {a, b, {:degrees, y}, {:course, c}}) do
        new_degrees      = x + y
        {new_degrees, n} = normalize_degrees(new_degrees, c)
        {a,b, {:degrees, new_degrees}, {:course, n}}
    end

    defp handle("L", x, {a, b, {:degrees, y}, {:course, c}}) do
        new_degrees      = x
        {new_degrees, n} = normalize_degrees2(new_degrees, c)
        {a,b, {:degrees, new_degrees}, {:course, n}}
    end

    defp normalize_degrees(degrees, x) do
        x = if x == 5, do: 1, else: x
        if degrees >= 90, do: normalize_degrees(degrees - 90, x + 1), else: {degrees, x}
    end

    defp normalize_degrees2(degrees, x) do
        x = if x == 0, do: 4, else: x
        if degrees >= 90, do: normalize_degrees2(degrees - 90, x - 1), else: {degrees, x}
    end

    @directions %{1 => :e,  2 => :s, 3 => :w, 4 => :n}
    defp handle("F", x, {_,_,_,{:course, y}} = current_position) do
        c = Map.get(@directions, y) |>  Atom.to_string() |> String.capitalize()
        handle(c, x, current_position)
    end
end