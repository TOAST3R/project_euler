# Problem 12: Highly divisible triangular number
# https://projecteuler.net/problem=12

defmodule Problem012 do
  def triangular_numbers(divisors) do
    triangular_numbers_stream
    |> Stream.drop_while(&(divisors(&1) |> Enum.count <= divisors))
    |> Enum.take(1)
    |> List.first
  end

  def triangular_numbers_stream do
    Stream.unfold {2, 1}, fn({last, sum}) ->
      {sum, {last+1, sum+last}} 
    end
  end

  def divisors(n) do
    1..round(:math.sqrt(n))
    |> Enum.flat_map(fn(divisor) ->
      {quotient, rem} = {div(n, divisor), rem(n, divisor)}
      cond do
        rem != 0            -> []
        divisor == quotient -> [divisor]
        true                -> [divisor, quotient]
      end
    end)
  end
end
