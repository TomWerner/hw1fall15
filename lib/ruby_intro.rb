# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return 0 if arr == nil || arr.length == 0
  return arr.inject(:+)
end

def max_2_sum arr
  return 0 if arr.length == 0
  return arr[0] if arr.length == 1
  return sum(arr.sort.last(2))
end

def sum_to_n? arr, n
  sorted = arr.sort
  low = 0
  high = arr.length - 1
  
  while (low < high)
    attempt = sorted[low] + sorted[high]
    return true if attempt == n
    low += 1 if attempt < n
    high -= 1 if attempt > n
  end
  
  return false
end

# Part 2

def hello(name)
  return "Hello, %s" % name
end

def starts_with_consonant? s
  return (/^[a-z&&[^aeiou]]/i =~ s) != nil
end

def binary_multiple_of_4? s
  begin
    return Integer(s, 2) % 4 == 0
  rescue
    return false
  end
  return false
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  
  def initialize(isbn, price)
    raise ArgumentError, 'ISBN cannot be empty string' unless isbn.length > 0
    raise ArgumentError, 'Price cannot be negative or free' unless price > 0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    return "$%.2f" % [@price]
  end
end
