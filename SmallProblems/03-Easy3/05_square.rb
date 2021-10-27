require 'pry'

def multiply(x, y)
  x * y
end

def square(num)
  multiply(num, num)
end

# Requires n >= 0
def power(x, n)
  case n
  when 0 then 1
  when 1 then x
  else multiply(x, power(x, n - 2))
  end
end

binding.pry

puts square(5) == 25
puts square(-8) == 64