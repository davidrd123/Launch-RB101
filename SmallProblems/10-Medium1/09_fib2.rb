# input: integer
# output: integer

# Algorithm:
# F[n] = F[n-2] + F[n-1]



def fibonacci(num) 
  fib = [0, 1, 1]
  3.upto(num) do |i|
    fib[i] = fib[i - 2] + fib[i - 1]
  end
  fib[num]
end

p fibonacci(20)       #== 6765
p fibonacci(100)      #== 354224848179261915075
p fibonacci(100_001)  # => 4202692702.....8285979669707537501