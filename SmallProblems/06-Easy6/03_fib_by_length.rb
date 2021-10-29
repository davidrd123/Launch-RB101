# input: integer
# output: integer

# rules:
#   Explicit Requirements
#     - Return the index of the first Fibonacci number with number of digits 
#        equal to the integer passed in
#     - num_digits >= 2
#     - First Fib number has index 1, F(n) = F(n-2) + F(n-1)
#     F(0) = 0   -> for zero-indexed array
#     F(1) = 1
#     F(2) = 1
#     F(3) = 2
#   Implicit Requirements
#     - If there's no Fib number with exactly num_digits, return the next
#       one with > num_digits

# Algorithm:
# - Keep generating Fib numbers until the first one has length >= num_digits

# - Calculating next Fib number + keeping track of prev two
#   - F_1 = F
#   - F_2 = F_1
#   - F = F_2 + F_1

# F_2 = 1, F_1 = 1, n = 3

# F = F_1 + F_2     2
# F_2 = F_1         1
# F_1 = F_2         1

require 'pry'

def number_of_digits(num)
  num.to_s.length
end

# def next_fib(F_2, F_1)
#   F = F_1 + F_2
#   F_2 = F_1
# end

def find_fibonacci_index_by_length1(digits)
  fib_arr = [0, 1, 1]
  curr_index = 3
  loop do
    fib_arr[curr_index] = fib_arr[curr_index - 1] + fib_arr[curr_index - 2]
    break if number_of_digits(fib_arr[curr_index]) >= digits

    curr_index += 1
  end
  # binding.pry
  curr_index
end

def find_fibonacci_index_by_length(digits)
  fib2 = 1
  fib1 = 1
  fib = fib1 + fib2
  curr_index = 3
  loop do
    fib = fib1 + fib2
    break if fib.to_s.length >= digits

    fib2 = fib1
    fib1 = fib
    curr_index += 1
  end
  # binding.pry
  curr_index
end



puts find_fibonacci_index_by_length(2)     #== 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3)     #== 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10)    #== 45
puts find_fibonacci_index_by_length(100)   #== 476
puts find_fibonacci_index_by_length(1000)  #== 4782
puts find_fibonacci_index_by_length(10000) #== 47847