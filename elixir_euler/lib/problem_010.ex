# Problem 10: Summation of primes
# https://projecteuler.net/problem=10

defmodule Problem010 do
  def prime_sumation(n) do
    prime_stream
    |> Enum.take_while(&(&1 < n))
    |> Enum.sum
  end

  defp prime_stream do
    Stream.unfold {}, fn(acc) ->
      prime = next_prime(acc)
      { prime, Tuple.append(acc, prime) }
    end
  end
  
  defp next_prime({}), do: 2

  defp next_prime(prev_primes) do
    prev = elem(prev_primes, tuple_size(prev_primes) - 1)
    next_prime(prev + 1, prev_primes)
  end

  defp next_prime(num, prev_primes) do
    if prime?(num, prev_primes, 0) do
      num
    else
      next_prime(num + 1, prev_primes)
    end
  end

  defp prime?(num, prev_primes, i) do
    check = prev_primes |> elem(i)

    cond do
      num < :math.pow(check,2) -> true
      rem(num, check) == 0     -> false
      true                     -> prime?(num, prev_primes, i + 1)
    end
  end
end
