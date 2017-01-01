# Problem 4: Largest palindrome product
# https://projecteuler.net/problem=4

defmodule Problem004 do
  def largest_palindrome do
    palindrome_numbers
    |> Enum.filter(&(product_of_two(&1)))
    |> Enum.max
  end
  defp product_of_two(number) do
    999..100 
    |> Enum.filter(&(rem(number, &1) == 0)) 
    |> Enum.filter(&(Enum.count(Integer.digits(div(number, &1))) == 3))
    |> Enum.count > 0
  end
  defp palindrome_numbers do
    999*999..100*100
    |> Enum.filter(&(is_palindrome(&1)))
  end 
  defp is_palindrome(number) do
    digits = Integer.digits(number)
    middle = div(digits |> Enum.count, 2)
    Enum.take(digits, middle) == Enum.take(Enum.reverse(digits), middle)
  end
end
