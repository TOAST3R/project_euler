# Problem 11: Largest product in a grid
# https://projecteuler.net/problem=11

defmodule Problem011 do
  def max_product(string, n) do
    matrix = to_matrix(string)

    (horizontal_vectors(matrix, n) 
    ++ vertical_vectors(matrix, n)
    ++ diagonal_vectors(matrix, n))
    |> Enum.map(fn(vector) -> vector
      |> Enum.reduce(&(&1 * &2))
    end)
    |> Enum.max
  end

  def to_matrix(string) do
    string 
    |> String.strip
    |> String.split("\n")
    |> Enum.map(fn(row) -> row
      |> String.split
      |> Enum.map(&(String.to_integer(&1)))
    end)
  end

  def horizontal_vectors(matrix, n) do 
    matrix 
    |> Enum.flat_map(fn(row) -> row
      |> Enum.chunk(n, 1)
    end)
  end

  def vertical_vectors(matrix, n) do
    matrix 
    |> Enum.chunk(n, 1) 
    |> Enum.flat_map(fn(chunk) -> chunk
      |> List.zip
      |> Enum.map(&(Tuple.to_list(&1)))
    end)
  end

  def diagonal_vectors(matrix, n) do
    left = matrix 
    |> Enum.with_index
    |> Enum.map(&(translation(elem(&1,0), elem(&1,1))))
    |> vertical_vectors(n)

    right = matrix 
    |> Enum.with_index
    |> Enum.map(&(translation(elem(&1,0), -elem(&1,1))))
    |> vertical_vectors(n)

    left ++ right
  end
  
  def translation(vector, 0), do: vector
  def translation(vector, position) when position < 0 do
    [List.last(vector)] ++ List.delete_at(vector, length(vector)-1)
    |> translation(position+1)
  end
  def translation(vector, position) when position > 0 do
    #List.delete_at(vector, 0) ++ [List.first(vector)]
    #|> translation(position-1)
    [head | tail] = vector

    tail ++ [head]
    |> translation(position-1)
  end
end
