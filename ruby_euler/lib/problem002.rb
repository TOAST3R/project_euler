class Problem002
  
  @cache = [1, 2]
  
  def even_sum(limit)
    while(n < limit)
      n = fibonacci(n)
    end

    return n.reduce(:+)
  end
  
  def fibonacci(n)
    return @cache[n] if @cache[n]
    @cache[n] = fibonacci(n - 1) + fibonacci(n - 2)
  end
end
