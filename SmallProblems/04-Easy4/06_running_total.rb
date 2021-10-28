require 'pry'
# input: array of integers
# output: array of integers

# rules:
#     Explicit Requirements
#       - Array returned has the same number of elements as input array
#       - Each element in the new array is the running total of the
#         original array
#     Implicit Requirements
#       - Empty array gives empty array

# Algorithm:
# - Initialize new result variable to empty array
# - Initialize running sum variable to 0
# - Iterate over the input array (curr_el <- input_arr)
#   - Add the current element to the running sum
#   - Append the new running sum to the result variable
# - Return the result variable


def running_total1(arr)
  result = []
  running_total = 0
  arr.each do |num|
    running_total += num
    result << running_total
  end
  result
end

def running_total2(arr)
  result = []
  arr.reduce(0) do |acc, elem|
    acc += elem
    result << acc
    acc
  end
  result
end

def running_total(arr)
  sum = 0
  arr.map {|elem| sum += elem }
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []

binding.pry