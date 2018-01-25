# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  result = 0
  if arr.empty?
    return 0
  else 
  arr.each {|i| result += i}
  end
  return result
end


def max_2_sum arr
  if arr.size <= 0
    return 0
  elsif arr.size == 1
    return arr[0]
  else
  tempArr = arr.sort.last(2)
    return tempArr[0]+tempArr[1]
  end
end

def sum_to_n? arr, n
  if arr.size <=0 || n == 0
    return false
  elsif arr.size == 1
    return false
  else
    return arr.permutation(2).any? {|a,b| a + b == n}
  end
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  if /[^aeiou*]/i.match(s[0])
    if /[a-zA-Z]/i.match(s[0])
      return true
    end
  else
    return false
  end
  
end

def binary_multiple_of_4? s
  if (s) == "0"
    return true
  elsif /^[10]*00$/.match(s)
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  attr_reader   :isbn
  attr_accessor :price

  def isbn=(isbn)
    @isbn = isbn
  end

  def price=(price)
    @price = price
  end

  def initialize(isbn, price)
    raise(ArgumentError, "ISBN should not be empty") if isbn==''
    raise ArgumentError.new("Price should not be empty")  if price == ''
    @isbn = isbn
    @price = Float(price)
    raise ArgumentError.new("Price has to be bigger than 0") if price <= 0
  end

  def price_as_string
    return sprintf("$%2.2f", price)
  end
end
