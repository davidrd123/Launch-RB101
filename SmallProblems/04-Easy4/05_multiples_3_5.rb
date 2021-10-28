require 'pry'
# input: integer
# output: integer
# rules:
#     Explicit Requirements:
#       - Find all multiples of 3 or 5 that lie between 1 and some number
#       - Compute the sum of those multiples
#       - Assume the number passed in is > 1

# Algorithm:
# - Initialize a variable to an empty array
# - Iterate through the numbers i <- 1..N 
#    - If i is evenly divisible by 3 or by 5, append it to the result array
# - Sum the numbers in the array and return that value

def multiple?(n, divisor)
  (n % divisor).zero?
end

def multisum(num)
  multiples = []
  (1..num).each do |n|
    multiples << n if (n % 3).zero? || (n % 5).zero?
  end
  multiples.sum
end

def multisum2(num)
  (1..num).reduce(0) do |acc, n|
    if (n % 3).zero? || (n % 5).zero?
      acc + n
    else
      acc
    end
  end
end


puts multisum2(3) == 3
puts multisum2(5) == 8
puts multisum2(10) == 33
puts multisum(1000) == 234168
binding.pry