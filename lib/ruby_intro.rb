# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum
end

def max_2_sum arr
  arr.max(2).sum
end

def sum_to_n? arr, n
  arr.combination(2).each { |two_int|
    return true if two_int.sum == n
  }
  false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  not_consonant = ["A", "E", "I", "O", "U"]
  return false if s.empty?
  return false unless s[0].match?(/[[:alpha:]]/)
  return true unless not_consonant.include? s[0].upcase
end

def binary_multiple_of_4? s
  return false if s.empty?
  s.each_char { |char| return false if char.match?(/[^01]/)}
  return true if s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end

  attr_accessor :isbn, :price

  def price_as_string
    return "$%0.2f" % [price]
  end
end
